import 'package:flutter_test/flutter_test.dart';

/// Scaffold de testes unitários para agregações do dashboard.
/// Substitua a implementação fake pela sua service/helper real.

class LeadMetric {
  final String companyId;
  final String stage;

  LeadMetric({required this.companyId, required this.stage});
}

class DashboardMetrics {
  static int totalByCompany(List<LeadMetric> leads, String companyId) =>
      leads.where((lead) => lead.companyId == companyId).length;

  static Map<String, int> stageCountByCompany(
    List<LeadMetric> leads,
    String companyId,
  ) {
    final scoped = leads.where((lead) => lead.companyId == companyId);
    final result = <String, int>{};

    for (final lead in scoped) {
      result.update(lead.stage, (value) => value + 1, ifAbsent: () => 1);
    }

    return result;
  }
}

void main() {
  group('DashboardMetrics.totalByCompany', () {
    test('deve contar apenas leads da empresa corrente', () {
      final leads = [
        LeadMetric(companyId: 'company_a', stage: 'new'),
        LeadMetric(companyId: 'company_a', stage: 'won'),
        LeadMetric(companyId: 'company_b', stage: 'lost'),
      ];

      expect(DashboardMetrics.totalByCompany(leads, 'company_a'), 2);
    });

    test('deve retornar zero quando não houver leads', () {
      expect(DashboardMetrics.totalByCompany([], 'company_a'), 0);
    });
  });

  group('DashboardMetrics.stageCountByCompany', () {
    test('deve agregar corretamente por stage', () {
      final leads = [
        LeadMetric(companyId: 'company_a', stage: 'new'),
        LeadMetric(companyId: 'company_a', stage: 'new'),
        LeadMetric(companyId: 'company_a', stage: 'proposal'),
        LeadMetric(companyId: 'company_b', stage: 'won'),
      ];

      final metrics = DashboardMetrics.stageCountByCompany(leads, 'company_a');

      expect(metrics['new'], 2);
      expect(metrics['proposal'], 1);
      expect(metrics.containsKey('won'), isFalse);
    });

    test('não deve misturar tenants na agregação', () {
      final leads = [
        LeadMetric(companyId: 'company_a', stage: 'won'),
        LeadMetric(companyId: 'company_b', stage: 'won'),
      ];

      final metrics = DashboardMetrics.stageCountByCompany(leads, 'company_a');

      expect(metrics['won'], 1);
    });
  });
}
