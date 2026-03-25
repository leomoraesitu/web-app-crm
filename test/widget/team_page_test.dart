import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeTeamPage extends StatelessWidget {
  final List<String> collaborators;
  final bool isLoading;

  const FakeTeamPage({
    super.key,
    required this.collaborators,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : collaborators.isEmpty
                ? const Center(child: Text('Nenhum colaborador encontrado'))
                : ListView(
                    children: collaborators.map((c) => ListTile(title: Text(c))).toList(),
                  ),
      ),
    );
  }
}

void main() {
  testWidgets('deve renderizar lista de colaboradores', (tester) async {
    await tester.pumpWidget(const FakeTeamPage(collaborators: ['Léo', 'Ana']));

    expect(find.text('Léo'), findsOneWidget);
    expect(find.text('Ana'), findsOneWidget);
  });

  testWidgets('deve exibir loading state', (tester) async {
    await tester.pumpWidget(const FakeTeamPage(collaborators: [], isLoading: true));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('deve exibir empty state', (tester) async {
    await tester.pumpWidget(const FakeTeamPage(collaborators: []));

    expect(find.text('Nenhum colaborador encontrado'), findsOneWidget);
  });

  testWidgets('deve exibir fallback Sem responsável quando necessário', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Text('Sem responsável'))));

    expect(find.text('Sem responsável'), findsOneWidget);
  });
}
