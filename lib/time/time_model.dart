import '/components/menu_side_bar_expandido_widget.dart';
import '/components/menu_side_bar_reduzido_widget.dart';
import '/components/menu_side_bar_tablet_widget.dart';
import '/components/tabela_time_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'time_widget.dart' show TimeWidget;
import 'package:flutter/material.dart';

class TimeModel extends FlutterFlowModel<TimeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuSideBarTablet component.
  late MenuSideBarTabletModel menuSideBarTabletModel;
  // Model for MenuSideBarReduzido component.
  late MenuSideBarReduzidoModel menuSideBarReduzidoModel;
  // Model for MenuSideBarExpandido component.
  late MenuSideBarExpandidoModel menuSideBarExpandidoModel;
  // Model for TabelaTime component.
  late TabelaTimeModel tabelaTimeModel;

  @override
  void initState(BuildContext context) {
    menuSideBarTabletModel =
        createModel(context, () => MenuSideBarTabletModel());
    menuSideBarReduzidoModel =
        createModel(context, () => MenuSideBarReduzidoModel());
    menuSideBarExpandidoModel =
        createModel(context, () => MenuSideBarExpandidoModel());
    tabelaTimeModel = createModel(context, () => TabelaTimeModel());
  }

  @override
  void dispose() {
    menuSideBarTabletModel.dispose();
    menuSideBarReduzidoModel.dispose();
    menuSideBarExpandidoModel.dispose();
    tabelaTimeModel.dispose();
  }
}
