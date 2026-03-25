import 'package:flutter_test/flutter_test.dart';

/// Scaffold de testes para RBAC.
/// Troque a enum/permissões fake pelo seu modelo real de roles.

enum UserRole { admin, collaborator, unknown }

class Permissions {
  static bool canAccessCompanySettings(UserRole role) => role == UserRole.admin;

  static bool canDeleteCollaborator(UserRole role) => role == UserRole.admin;

  static bool canReadDashboard(UserRole role) =>
      role == UserRole.admin || role == UserRole.collaborator;
}

void main() {
  group('Permissions.canAccessCompanySettings', () {
    test('admin deve acessar configurações da empresa', () {
      expect(Permissions.canAccessCompanySettings(UserRole.admin), isTrue);
    });

    test('colaborador não deve acessar configurações da empresa', () {
      expect(
        Permissions.canAccessCompanySettings(UserRole.collaborator),
        isFalse,
      );
    });

    test('role indefinida deve falhar de forma segura', () {
      expect(Permissions.canAccessCompanySettings(UserRole.unknown), isFalse);
    });
  });

  group('Permissions.canDeleteCollaborator', () {
    test('somente admin deve excluir colaborador', () {
      expect(Permissions.canDeleteCollaborator(UserRole.admin), isTrue);
      expect(Permissions.canDeleteCollaborator(UserRole.collaborator), isFalse);
    });
  });

  group('Permissions.canReadDashboard', () {
    test('admin e colaborador podem ler dashboard', () {
      expect(Permissions.canReadDashboard(UserRole.admin), isTrue);
      expect(Permissions.canReadDashboard(UserRole.collaborator), isTrue);
    });
  });
}
