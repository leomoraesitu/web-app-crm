import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeLeadForm extends StatefulWidget {
  const FakeLeadForm({super.key});

  @override
  State<FakeLeadForm> createState() => _FakeLeadFormState();
}

class _FakeLeadFormState extends State<FakeLeadForm> {
  final nameController = TextEditingController();
  final companyController = TextEditingController();

  bool get isValid =>
      nameController.text.trim().isNotEmpty &&
      companyController.text.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(key: const Key('lead_name'), controller: nameController),
            TextField(
              key: const Key('company_id'),
              controller: companyController,
            ),
            StatefulBuilder(
              builder: (context, setInnerState) {
                void sync() => setInnerState(() {});
                nameController.addListener(sync);
                companyController.addListener(sync);
                return ElevatedButton(
                  key: const Key('save_lead'),
                  onPressed: isValid ? () {} : null,
                  child: const Text('Salvar lead'),
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
  testWidgets('deve renderizar formulário de lead', (tester) async {
    await tester.pumpWidget(const FakeLeadForm());

    expect(find.byKey(const Key('lead_name')), findsOneWidget);
    expect(find.byKey(const Key('company_id')), findsOneWidget);
    expect(find.byKey(const Key('save_lead')), findsOneWidget);
  });

  testWidgets('deve manter CTA desabilitado quando formulário for inválido', (
    tester,
  ) async {
    await tester.pumpWidget(const FakeLeadForm());

    final button = tester.widget<ElevatedButton>(find.byKey(const Key('save_lead')));
    expect(button.onPressed, isNull);
  });

  testWidgets('deve habilitar CTA quando formulário estiver válido', (tester) async {
    await tester.pumpWidget(const FakeLeadForm());

    await tester.enterText(find.byKey(const Key('lead_name')), 'Lead XPTO');
    await tester.enterText(find.byKey(const Key('company_id')), 'company_a');
    await tester.pump();

    final button = tester.widget<ElevatedButton>(find.byKey(const Key('save_lead')));
    expect(button.onPressed, isNotNull);
  });
}
