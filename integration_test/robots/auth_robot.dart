import 'package:flutter_test/flutter_test.dart';
import '../helpers/test_credentials.dart';
import '../helpers/test_keys.dart';

class AuthRobot {
  final WidgetTester tester;

  AuthRobot(this.tester);

  Future<void> loginAsAdmin() async {
    await tester.enterText(find.byKey(TestKeys.emailField), TestCredentials.adminEmail);
    await tester.enterText(find.byKey(TestKeys.passwordField), TestCredentials.adminPassword);
    await tester.tap(find.byKey(TestKeys.loginButton));
    await tester.pumpAndSettle();
  }

  Future<void> loginAsCollaborator() async {
    await tester.enterText(find.byKey(TestKeys.emailField), TestCredentials.collaboratorEmail);
    await tester.enterText(find.byKey(TestKeys.passwordField), TestCredentials.collaboratorPassword);
    await tester.tap(find.byKey(TestKeys.loginButton));
    await tester.pumpAndSettle();
  }

  Future<void> loginAsOtherTenantAdmin() async {
    await tester.enterText(find.byKey(TestKeys.emailField), TestCredentials.otherTenantEmail);
    await tester.enterText(find.byKey(TestKeys.passwordField), TestCredentials.otherTenantPassword);
    await tester.tap(find.byKey(TestKeys.loginButton));
    await tester.pumpAndSettle();
  }
}