import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:web_app_c_r_m/core/auth/auth_action_result.dart';

import '../fakes/fake_auth_facade.dart';
import '../helpers/test_bootstrap.dart';
import '../robots/login_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('deve exibir diálogo de erro quando login falhar',
      (tester) async {
    await pumpTestApp(
      tester,
      authFacade: const FakeAuthFacade(
        signInResult: AuthActionResult(
          success: false,
          title: 'Erro!',
          message: 'Credenciais inválidas.',
        ),
      ),
    );

    final robot = LoginRobot(tester);

    await robot.enterEmail('leo@email.com');
    await robot.enterPassword('123456');

    final buttonFinder = find.byKey(const Key('login_submit_button'));
    expect(buttonFinder, findsOneWidget);

    final dynamic button = tester.widget(buttonFinder);
    expect(button.onPressed, isNotNull);
    
    await robot.tapLogin();

    expect(find.byKey(const ValueKey('error_dialog')), findsOneWidget);
    expect(find.byKey(const ValueKey('error_dialog_title')), findsOneWidget);
    expect(find.byKey(const ValueKey('error_dialog_message')), findsOneWidget);

    expect(find.text('Erro!'), findsOneWidget);
    expect(find.text('Credenciais inválidas.'), findsOneWidget);

    final okButton = find.byKey(const ValueKey('auth_result_dialog_ok_button'));
    expect(okButton, findsOneWidget);

    await tester.ensureVisible(okButton);
    await tester.tap(okButton);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.byKey(const ValueKey('error_dialog')), findsNothing);
  });
}
