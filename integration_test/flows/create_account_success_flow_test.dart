import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:web_app_c_r_m/core/auth/auth_action_result.dart';

import '../fakes/fake_auth_facade.dart';
import '../helpers/test_bootstrap.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('deve exibir diálogo de sucesso quando cadastro for bem-sucedido',
      (tester) async {
    await pumpTestApp(
      tester,
      authFacade: const FakeAuthFacade(
        createAccountResult: AuthActionResult(
          success: true,
          title: 'Sucesso!',
          message: 'Conta criada com sucesso.',
        ),
      ),
    );

    final registrationTab = find.byKey(const Key('registration_tab'));
    expect(registrationTab, findsOneWidget);

    await tester.ensureVisible(registrationTab);
    await tester.pump();

    await tester.tap(registrationTab, warnIfMissed: false);
    await tester.pumpAndSettle();

    final nameField = find.byKey(const Key('register_name_input'));
    final emailField = find.byKey(const Key('register_email_input'));
    final passwordField = find.byKey(const Key('register_password_input'));
    final confirmPasswordField =
        find.byKey(const Key('register_confirm_password_input'));
    final submitButton = find.byKey(const Key('register_submit_button'));

    expect(nameField, findsOneWidget);
    expect(emailField, findsOneWidget);
    expect(passwordField, findsOneWidget);
    expect(confirmPasswordField, findsOneWidget);
    expect(submitButton, findsOneWidget);

    await tester.enterText(nameField, 'Léo Moraes');
    await waitForFlutterFlowDebounce(tester);

    await tester.enterText(emailField, 'leo@email.com');
    await waitForFlutterFlowDebounce(tester);

    await tester.enterText(passwordField, '123456');
    await waitForFlutterFlowDebounce(tester);

    await tester.enterText(confirmPasswordField, '123456');
    await waitForFlutterFlowDebounce(tester);

    final dynamic button = tester.widget(submitButton);
    expect(button.onPressed, isNotNull);

    await tester.ensureVisible(submitButton);
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pump(const Duration(milliseconds: 300));

    await tester.tap(submitButton, warnIfMissed: false);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.byKey(const ValueKey('error_dialog')), findsOneWidget);
    expect(find.byKey(const ValueKey('error_dialog_title')), findsOneWidget);
    expect(find.byKey(const ValueKey('error_dialog_message')), findsOneWidget);

    expect(find.text('Sucesso!'), findsOneWidget);
    expect(find.text('Conta criada com sucesso.'), findsOneWidget);

    final okButton = find.byKey(const ValueKey('auth_result_dialog_ok_button'));
    expect(okButton, findsOneWidget);

    await tester.tap(okButton, warnIfMissed: false);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.byKey(const ValueKey('error_dialog')), findsNothing);
  });
}