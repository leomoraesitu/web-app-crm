import 'package:flutter_test/flutter_test.dart';
import 'package:web_app_c_r_m/core/auth/auth_action_result.dart';

void main() {
  group('AuthActionResult', () {
    test('ok deve criar resultado de sucesso com defaults corretos', () {
      final result = AuthActionResult.ok(
        title: 'Sucesso!',
        message: 'Login realizado com sucesso.',
      );

      expect(result.success, isTrue);
      expect(result.title, 'Sucesso!');
      expect(result.message, 'Login realizado com sucesso.');
      expect(result.userId, isNull);
      expect(result.navigateToDashboard, isFalse);
      expect(result.openNovaEmpresaFlow, isFalse);
      expect(result.errorType, isNull);
    });

    test('ok deve aceitar flags de navegação', () {
      final result = AuthActionResult.ok(
        title: 'Sucesso!',
        message: 'Usuário criado.',
        userId: 'abc123',
        navigateToDashboard: true,
        openNovaEmpresaFlow: false,
      );

      expect(result.success, isTrue);
      expect(result.userId, 'abc123');
      expect(result.navigateToDashboard, isTrue);
      expect(result.openNovaEmpresaFlow, isFalse);
      expect(result.errorType, isNull);
    });

    test('fail deve criar resultado de erro com errorType', () {
      final result = AuthActionResult.fail(
        title: 'Erro!',
        message: 'Credenciais inválidas.',
        errorType: AuthErrorType.invalidCredentials,
      );

      expect(result.success, isFalse);
      expect(result.title, 'Erro!');
      expect(result.message, 'Credenciais inválidas.');
      expect(result.userId, isNull);
      expect(result.navigateToDashboard, isFalse);
      expect(result.openNovaEmpresaFlow, isFalse);
      expect(result.errorType, AuthErrorType.invalidCredentials);
    });

    test('fail deve funcionar sem errorType', () {
      final result = AuthActionResult.fail(
        title: 'Erro',
        message: 'Erro desconhecido.',
      );

      expect(result.success, isFalse);
      expect(result.title, 'Erro');
      expect(result.message, 'Erro desconhecido.');
      expect(result.userId, isNull);
      expect(result.navigateToDashboard, isFalse);
      expect(result.openNovaEmpresaFlow, isFalse);
      expect(result.errorType, isNull);
    });
  });
}