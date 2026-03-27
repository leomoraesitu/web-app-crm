import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:web_app_c_r_m/app_state.dart';
import 'package:web_app_c_r_m/login/login_widget.dart';

Future<void> pumpLoginPage(WidgetTester tester) async {
  await tester.binding.setSurfaceSize(const Size(390, 844));

  SharedPreferences.setMockInitialValues({});

  final appState = FFAppState();
  await appState.initializePersistedState();

  await tester.pumpWidget(
    ChangeNotifierProvider<FFAppState>.value(
      value: appState,
      child: const MaterialApp(
        home: LoginWidget(),
      ),
    ),
  );

  // Evita que animações/layout inicial contaminem os testes.
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 500));
}

Future<void> waitForFlutterFlowDebounce(WidgetTester tester) async {
  await tester.pump(const Duration(milliseconds: 2100));
  await tester.pump();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('deve renderizar campos de login e CTA', (tester) async {
    await pumpLoginPage(tester);

    expect(find.byKey(const Key('login_email_input')), findsOneWidget);
    expect(find.byKey(const Key('login_password_input')), findsOneWidget);
    expect(find.byKey(const Key('login_submit_button')), findsOneWidget);
  });

  testWidgets('deve manter botão desabilitado com formulário inválido',
      (tester) async {
    await pumpLoginPage(tester);

    final buttonFinder = find.byKey(const Key('login_submit_button'));
    expect(buttonFinder, findsOneWidget);

    final dynamic button = tester.widget(buttonFinder);
    expect(button.onPressed, isNull);
  });

  testWidgets('deve habilitar botão com formulário válido', (tester) async {
    await pumpLoginPage(tester);

    final emailField = find.byKey(const Key('login_email_input'));
    expect(emailField, findsOneWidget);

    await tester.enterText(emailField, 'leo@email.com');
    await waitForFlutterFlowDebounce(tester);

    final passwordField = find.byKey(const Key('login_password_input'));
    expect(passwordField, findsOneWidget);

    // Garante que o campo de senha já foi habilitado após validação do email.
    final passwordWidgetBefore = tester.widget<TextFormField>(passwordField);
    expect(passwordWidgetBefore.enabled, isTrue);

    await tester.enterText(passwordField, '123456');
    await waitForFlutterFlowDebounce(tester);

    final buttonFinder = find.byKey(const Key('login_submit_button'));
    expect(buttonFinder, findsOneWidget);

    final dynamic button = tester.widget(buttonFinder);
    expect(button.onPressed, isNotNull);
  });
}