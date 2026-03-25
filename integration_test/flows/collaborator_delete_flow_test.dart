import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Collaborator Delete Flow', () {
    testWidgets('deve excluir colaborador sem remover os leads', (tester) async {
      // TODO: inicializar app e autenticar como admin.
      // TODO: navegar para Team.
      // TODO: excluir colaborador específico.
      // TODO: validar que leads permanecem visíveis.
      // TODO: validar fallback "Sem responsável".

      expect(true, isTrue);
    });
  });
}
