import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeKanbanPage extends StatelessWidget {
  final List<String> columns;
  final bool isLoading;

  const FakeKanbanPage({
    super.key,
    required this.columns,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : columns.isEmpty
                ? const Center(child: Text('Nenhum lead encontrado'))
                : Row(
                    children: columns
                        .map((column) => Expanded(child: Text(column)))
                        .toList(),
                  ),
      ),
    );
  }
}

void main() {
  testWidgets('deve renderizar colunas do kanban', (tester) async {
    await tester.pumpWidget(
      const FakeKanbanPage(columns: ['Novo', 'Qualificado', 'Proposta']),
    );

    expect(find.text('Novo'), findsOneWidget);
    expect(find.text('Qualificado'), findsOneWidget);
    expect(find.text('Proposta'), findsOneWidget);
  });

  testWidgets('deve exibir loading state', (tester) async {
    await tester.pumpWidget(const FakeKanbanPage(columns: [], isLoading: true));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('deve exibir empty state', (tester) async {
    await tester.pumpWidget(const FakeKanbanPage(columns: []));

    expect(find.text('Nenhum lead encontrado'), findsOneWidget);
  });
}
