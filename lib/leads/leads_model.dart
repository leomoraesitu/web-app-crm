import '/components/kanban_widget.dart';
import '/components/menu_side_bar_expandido_widget.dart';
import '/components/menu_side_bar_reduzido_widget.dart';
import '/components/menu_side_bar_tablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'leads_widget.dart' show LeadsWidget;
import 'package:flutter/material.dart';

class LeadsModel extends FlutterFlowModel<LeadsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuSideBarTablet component.
  late MenuSideBarTabletModel menuSideBarTabletModel;
  // Model for MenuSideBarReduzido component.
  late MenuSideBarReduzidoModel menuSideBarReduzidoModel;
  // Model for MenuSideBarExpandido component.
  late MenuSideBarExpandidoModel menuSideBarExpandidoModel;
  // Model for Kanban component.
  late KanbanModel kanbanModel;

  @override
  void initState(BuildContext context) {
    menuSideBarTabletModel =
        createModel(context, () => MenuSideBarTabletModel());
    menuSideBarReduzidoModel =
        createModel(context, () => MenuSideBarReduzidoModel());
    menuSideBarExpandidoModel =
        createModel(context, () => MenuSideBarExpandidoModel());
    kanbanModel = createModel(context, () => KanbanModel());
  }

  @override
  void dispose() {
    menuSideBarTabletModel.dispose();
    menuSideBarReduzidoModel.dispose();
    menuSideBarExpandidoModel.dispose();
    kanbanModel.dispose();
  }
}
