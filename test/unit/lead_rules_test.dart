import 'package:flutter_test/flutter_test.dart';

/// Scaffold de testes unitários para regras de domínio de Leads.
///
/// Ajuste os imports abaixo para refletir a sua camada de domínio real,
/// por exemplo:
/// import 'package:web_app_crm/backend/schema/leads_record.dart';
/// import 'package:web_app_crm/core/leads/lead_rules.dart';
///
/// Este arquivo foi criado como template operacional para a Sprint 4.

class LeadInput {
  final String companyId;
  final String? ownerUserRef;
  final String status;
  final String name;

  LeadInput({
    required this.companyId,
    required this.status,
    required this.name,
    this.ownerUserRef,
  });
}

class LeadRules {
  static bool canCreate(LeadInput input) =>
      input.companyId.trim().isNotEmpty && input.name.trim().isNotEmpty;

  static bool canMoveStage(String nextStage) =>
      const {'new', 'qualified', 'proposal', 'won', 'lost'}.contains(nextStage);

  static String ownerLabel(String? ownerUserRef) =>
      (ownerUserRef == null || ownerUserRef.trim().isEmpty)
          ? 'Sem responsável'
          : 'Com responsável';

  static LeadInput unassignOwner(LeadInput input) => LeadInput(
        companyId: input.companyId,
        status: input.status,
        name: input.name,
        ownerUserRef: null,
      );
}

void main() {
  group('LeadRules.canCreate', () {
    test('deve permitir criação quando companyId e nome são válidos', () {
      final input = LeadInput(
        companyId: 'company_a',
        status: 'new',
        name: 'Empresa XPTO',
      );

      expect(LeadRules.canCreate(input), isTrue);
    });

    test('deve bloquear criação sem companyId', () {
      final input = LeadInput(
        companyId: '',
        status: 'new',
        name: 'Empresa XPTO',
      );

      expect(LeadRules.canCreate(input), isFalse);
    });

    test('deve bloquear criação sem nome', () {
      final input = LeadInput(
        companyId: 'company_a',
        status: 'new',
        name: '',
      );

      expect(LeadRules.canCreate(input), isFalse);
    });
  });

  group('LeadRules.canMoveStage', () {
    test('deve permitir stages válidos do kanban', () {
      expect(LeadRules.canMoveStage('qualified'), isTrue);
      expect(LeadRules.canMoveStage('won'), isTrue);
    });

    test('deve bloquear stage inexistente', () {
      expect(LeadRules.canMoveStage('archived'), isFalse);
    });
  });

  group('LeadRules.ownerLabel', () {
    test('deve exibir fallback quando ownerUserRef for nulo', () {
      expect(LeadRules.ownerLabel(null), 'Sem responsável');
    });

    test('deve exibir fallback quando ownerUserRef estiver vazio', () {
      expect(LeadRules.ownerLabel(''), 'Sem responsável');
    });
  });

  group('LeadRules.unassignOwner', () {
    test('deve preservar o lead e remover ownerUserRef ao excluir colaborador', () {
      final original = LeadInput(
        companyId: 'company_a',
        status: 'proposal',
        name: 'Lead ABC',
        ownerUserRef: 'users/u_1',
      );

      final updated = LeadRules.unassignOwner(original);

      expect(updated.companyId, original.companyId);
      expect(updated.status, original.status);
      expect(updated.name, original.name);
      expect(updated.ownerUserRef, isNull);
    });
  });
}
