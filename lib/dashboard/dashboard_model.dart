import '/backend/backend.dart';
import '/components/grafico_leads_widget.dart';
import '/components/menu_side_bar_expandido_widget.dart';
import '/components/menu_side_bar_reduzido_widget.dart';
import '/components/menu_side_bar_tablet_widget.dart';
import '/components/tabela_time_dash_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in Dashboard widget.
  EmpresasRecord? empresaDoc;
  // Model for MenuSideBarTablet component.
  late MenuSideBarTabletModel menuSideBarTabletModel;
  // Model for MenuSideBarReduzido component.
  late MenuSideBarReduzidoModel menuSideBarReduzidoModel;
  // Model for MenuSideBarExpandido component.
  late MenuSideBarExpandidoModel menuSideBarExpandidoModel;
  // Model for TabelaTimeDash component.
  late TabelaTimeDashModel tabelaTimeDashModel1;
  // Model for GraficoLeads component.
  late GraficoLeadsModel graficoLeadsModel1;
  // Model for TabelaTimeDash component.
  late TabelaTimeDashModel tabelaTimeDashModel2;
  // Model for GraficoLeads component.
  late GraficoLeadsModel graficoLeadsModel2;

  @override
  void initState(BuildContext context) {
    menuSideBarTabletModel =
        createModel(context, () => MenuSideBarTabletModel());
    menuSideBarReduzidoModel =
        createModel(context, () => MenuSideBarReduzidoModel());
    menuSideBarExpandidoModel =
        createModel(context, () => MenuSideBarExpandidoModel());
    tabelaTimeDashModel1 = createModel(context, () => TabelaTimeDashModel());
    graficoLeadsModel1 = createModel(context, () => GraficoLeadsModel());
    tabelaTimeDashModel2 = createModel(context, () => TabelaTimeDashModel());
    graficoLeadsModel2 = createModel(context, () => GraficoLeadsModel());
  }

  @override
  void dispose() {
    menuSideBarTabletModel.dispose();
    menuSideBarReduzidoModel.dispose();
    menuSideBarExpandidoModel.dispose();
    tabelaTimeDashModel1.dispose();
    graficoLeadsModel1.dispose();
    tabelaTimeDashModel2.dispose();
    graficoLeadsModel2.dispose();
  }
}
