import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nova_empresa_widget.dart' show NovaEmpresaWidget;
import 'package:flutter/material.dart';

class NovaEmpresaModel extends FlutterFlowModel<NovaEmpresaWidget> {
  ///  Local state fields for this component.

  bool isValidNameEnterprise = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameEnterprise widget.
  FocusNode? nameEnterpriseFocusNode;
  TextEditingController? nameEnterpriseTextController;
  String? Function(BuildContext, String?)?
      nameEnterpriseTextControllerValidator;
  String? _nameEnterpriseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatorio';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in nameEnterprise widget.
  bool? isValidNameEnterpriseOutput;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EmpresasRecord? empresaCriada;

  @override
  void initState(BuildContext context) {
    nameEnterpriseTextControllerValidator =
        _nameEnterpriseTextControllerValidator;
  }

  @override
  void dispose() {
    nameEnterpriseFocusNode?.dispose();
    nameEnterpriseTextController?.dispose();
  }
}
