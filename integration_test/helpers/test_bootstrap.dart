import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:web_app_c_r_m/main.dart' as app;

Future<WidgetTester> bootstrapApp(WidgetTester tester) async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  app.main();
  await tester.pumpAndSettle();
  return tester;
}