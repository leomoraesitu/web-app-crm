import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'leads_adicionar_widget.dart' show LeadsAdicionarWidget;
import 'package:flutter/material.dart';

class LeadsAdicionarModel extends FlutterFlowModel<LeadsAdicionarWidget> {
  ///  Local state fields for this component.

  bool isValidName = false;

  bool isValidEmail = false;

  bool isValidPhone = false;

  bool isValidDescription = false;

  bool isValidSource = false;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in nome widget.
  bool? isValidNameOutput;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return '* insira um email válido';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in email widget.
  bool? isValidEmailOutput;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  String? _telefoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 10) {
      return '* mínimo 10 números';
    }
    if (val.length > 11) {
      return '* máximo 11 números';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in telefone widget.
  bool? isValidPhoneOutput;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in descricao widget.
  bool? isValidDescriptionOutput;
  // State field(s) for DropDownFonte widget.
  String? dropDownFonteValue;
  FormFieldController<String>? dropDownFonteValueController;
  // Stores action output result for [Validate Form] action in DropDownFonte widget.
  bool? isValidSourceOutput;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LeadsRecord? createLeadOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FonteLeadsRecord? docLeadFonte;

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
