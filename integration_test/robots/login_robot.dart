import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_bootstrap.dart';

class LoginRobot {
  final WidgetTester tester;

  LoginRobot(this.tester);

  Finder get emailField => find.byKey(const Key('login_email_input'));
  Finder get passwordField => find.byKey(const Key('login_password_input'));
  Finder get loginButton => find.byKey(const Key('login_submit_button'));

  Future<void> enterEmail(String value) async {
    expect(emailField, findsOneWidget);
    await tester.enterText(emailField, value);
    await waitForFlutterFlowDebounce(tester);
  }

  Future<void> enterPassword(String value) async {
    expect(passwordField, findsOneWidget);
    await tester.enterText(passwordField, value);
    await waitForFlutterFlowDebounce(tester);
  }

  Future<void> tapLogin() async {
  final loginButton = find.byKey(const Key('login_submit_button'));
  expect(loginButton, findsOneWidget);

  await tester.ensureVisible(loginButton);
  await tester.pump();

  // Fecha foco/teclado antes do tap.
  FocusManager.instance.primaryFocus?.unfocus();
  await tester.pump(const Duration(milliseconds: 300));

  await tester.tap(loginButton, warnIfMissed: false);
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 500));
}
}