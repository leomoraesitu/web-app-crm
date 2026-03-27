import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


import '../../integration_test/helpers/test_bootstrap.dart';
import '../../integration_test/fakes/fake_auth_facade.dart';

void main() {
  testWidgets('formulário de cadastro deve habilitar campos progressivamente',
      (tester) async {
    await pumpTestApp(
      tester,
      authFacade: const FakeAuthFacade(),
    );

    /// 1️⃣ Ir para aba Cadastro
    final tabFinder = find.byKey(const Key('registration_tab'));

    expect(tabFinder, findsOneWidget);

    await tester.ensureVisible(tabFinder);
    await tester.pump();

    await tester.tap(tabFinder, warnIfMissed: false);
    await tester.pumpAndSettle();

    /// 2️⃣ Campos
    final nameField = find.byKey(const Key('register_name_input'));
    final emailField = find.byKey(const Key('register_email_input'));
    final passwordField = find.byKey(const Key('register_password_input'));
    final confirmField =
        find.byKey(const Key('register_confirm_password_input'));
    final submitButton = find.byKey(const Key('register_submit_button'));

    expect(nameField, findsOneWidget);
    expect(emailField, findsOneWidget);
    expect(passwordField, findsOneWidget);
    expect(confirmField, findsOneWidget);

    /// 3️⃣ Inicialmente: só nome habilitado
    TextFormField emailWidget = tester.widget(emailField);
    expect(emailWidget.enabled, isFalse);

    /// 4️⃣ Preencher nome
    await tester.enterText(nameField, 'Léo Moraes');
    await waitForFlutterFlowDebounce(tester);

    /// Email deve habilitar
    emailWidget = tester.widget(emailField);
    expect(emailWidget.enabled, isTrue);

    /// 5️⃣ Preencher email
    await tester.enterText(emailField, 'leo@email.com');
    await waitForFlutterFlowDebounce(tester);

    TextFormField passwordWidget = tester.widget(passwordField);
    expect(passwordWidget.enabled, isTrue);

    /// 6️⃣ Preencher senha
    await tester.enterText(passwordField, '123456');
    await waitForFlutterFlowDebounce(tester);

    TextFormField confirmWidget = tester.widget(confirmField);
    expect(confirmWidget.enabled, isTrue);

    /// 7️⃣ Preencher confirmação
    await tester.enterText(confirmField, '123456');
    await waitForFlutterFlowDebounce(tester);

    /// 8️⃣ Botão deve habilitar
    final dynamic button = tester.widget(submitButton);
    expect(button.onPressed, isNotNull);
  });
}
