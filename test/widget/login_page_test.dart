import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Widget test scaffold para login.
/// Substitua o widget fake por sua página real, por exemplo:
/// await tester.pumpWidget(MaterialApp(home: LoginWidget()));

class FakeLoginPage extends StatefulWidget {
  const FakeLoginPage({super.key});

  @override
  State<FakeLoginPage> createState() => _FakeLoginPageState();
}

class _FakeLoginPageState extends State<FakeLoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool get isValid =>
      emailController.text.contains('@') && passwordController.text.length >= 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(key: const Key('email'), controller: emailController),
            TextField(key: const Key('password'), controller: passwordController),
            StatefulBuilder(
              builder: (context, setInnerState) {
                void sync() => setInnerState(() {});
                emailController.addListener(sync);
                passwordController.addListener(sync);
                return ElevatedButton(
                  key: const Key('login_button'),
                  onPressed: isValid ? () {} : null,
                  child: const Text('Entrar'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  testWidgets('deve renderizar campos de login e CTA', (tester) async {
    await tester.pumpWidget(const FakeLoginPage());

    expect(find.byKey(const Key('email')), findsOneWidget);
    expect(find.byKey(const Key('password')), findsOneWidget);
    expect(find.byKey(const Key('login_button')), findsOneWidget);
  });

  testWidgets('deve manter botão desabilitado com formulário inválido', (
    tester,
  ) async {
    await tester.pumpWidget(const FakeLoginPage());

    final button = tester.widget<ElevatedButton>(
      find.byKey(const Key('login_button')),
    );

    expect(button.onPressed, isNull);
  });

  testWidgets('deve habilitar botão com formulário válido', (tester) async {
    await tester.pumpWidget(const FakeLoginPage());

    await tester.enterText(find.byKey(const Key('email')), 'leo@email.com');
    await tester.enterText(find.byKey(const Key('password')), '123456');
    await tester.pump();

    final button = tester.widget<ElevatedButton>(
      find.byKey(const Key('login_button')),
    );

    expect(button.onPressed, isNotNull);
  });
}
