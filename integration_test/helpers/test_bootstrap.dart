import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:web_app_c_r_m/app_state.dart';
import 'package:web_app_c_r_m/core/auth/auth_facade.dart';
import 'package:web_app_c_r_m/dashboard/dashboard_widget.dart';
import 'package:web_app_c_r_m/login/login_widget.dart';

Future<void> pumpTestApp(
  WidgetTester tester, {
  required AuthFacade authFacade,
}) async {
  await tester.binding.setSurfaceSize(const Size(390, 844));

  SharedPreferences.setMockInitialValues({});

  final appState = FFAppState();
  await appState.initializePersistedState();

  final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        name: LoginWidget.routeName,
        path: '/login',
        builder: (context, state) => const LoginWidget(),
      ),
      GoRoute(
        name: DashboardWidget.routeName,
        path: '/dashboard',
        builder: (context, state) => const Scaffold(
          body: Center(
            child: Text('Dashboard'),
          ),
        ),
      ),
    ],
  );

  await tester.pumpWidget(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FFAppState>.value(value: appState),
        Provider<AuthFacade>.value(value: authFacade),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    ),
  );

  await tester.pump();
  await tester.pump(const Duration(milliseconds: 500));
}

Future<void> waitForFlutterFlowDebounce(WidgetTester tester) async {
  await tester.pump(const Duration(milliseconds: 2100));
  await tester.pump();
}