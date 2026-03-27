import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool isValidEmail = false;

  bool isValidPassword = false;

  bool isValidNameCreate = false;

  bool isValidEmailCreate = false;

  bool isValidPasswordCreate = false;

  bool isValidPasswordConfirmCreate = false;

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

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
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 6) {
      return '* mínimo 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in password widget.
  bool? isValidPasswordOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in ButtonRecoveryEmail widget.
  List<UsersRecord>? queryOutput;
  // State field(s) for nameCreate widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  String? _nameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 3) {
      return '* mínimo 3 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in nameCreate widget.
  bool? isValidNameCreateOutput;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode;
  TextEditingController? emailCreateTextController;
  String? Function(BuildContext, String?)? emailCreateTextControllerValidator;
  String? _emailCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return '* insira um email válido';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in emailCreate widget.
  bool? isValidEmailCreateOutput;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 6) {
      return '* mínimo 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in passwordCreate widget.
  bool? isValidPasswordCreateOutput;
  // State field(s) for passwordConfirmCreate widget.
  FocusNode? passwordConfirmCreateFocusNode;
  TextEditingController? passwordConfirmCreateTextController;
  late bool passwordConfirmCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCreateTextControllerValidator;
  String? _passwordConfirmCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 6) {
      return '* mínimo 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in passwordConfirmCreate widget.
  bool? isValidPasswordConfirmCreateOutput;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    nameCreateTextControllerValidator = _nameCreateTextControllerValidator;
    emailCreateTextControllerValidator = _emailCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passwordConfirmCreateVisibility = false;
    passwordConfirmCreateTextControllerValidator =
        _passwordConfirmCreateTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    emailCreateFocusNode?.dispose();
    emailCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmCreateFocusNode?.dispose();
    passwordConfirmCreateTextController?.dispose();
  }
}
