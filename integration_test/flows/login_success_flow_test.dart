import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:web_app_c_r_m/core/auth/auth_action_result.dart';

import '../fakes/fake_auth_facade.dart';
import '../helpers/test_bootstrap.dart';
import '../robots/login_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('deve navegar para dashboard quando login for bem-sucedido',
      (tester) async {
    await pumpTestApp(
      tester,
      authFacade: const FakeAuthFacade(
        signInResult: AuthActionResult(
          success: true,
          title: 'Sucesso!',
          message: 'Login realizado com sucesso.',
          navigateToDashboard: true,
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

    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('Dashboard'), findsOneWidget);
  });
}