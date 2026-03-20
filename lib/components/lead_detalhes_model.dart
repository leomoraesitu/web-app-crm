import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lead_detalhes_widget.dart' show LeadDetalhesWidget;
import 'package:flutter/material.dart';

class LeadDetalhesModel extends FlutterFlowModel<LeadDetalhesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in name widget.
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
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '*  obrigatório';
    }

    if (val.length < 10) {
      return '*  insira um telefone válido';
    }
    if (val.length > 11) {
      return '* insira um telefone válido';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in phone widget.
  bool? isValidPhoneOutput;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in description widget.
  bool? isValidDescriptionOutput;
  // State field(s) for DropDownSource widget.
  String? dropDownSourceValue;
  FormFieldController<String>? dropDownSourceValueController;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
