import '/flutter_flow/flutter_flow_util.dart';
import 'minha_empresa_widget.dart' show MinhaEmpresaWidget;
import 'package:flutter/material.dart';

class MinhaEmpresaModel extends FlutterFlowModel<MinhaEmpresaWidget> {
  ///  Local state fields for this component.

  bool isLoading = false;

  String draftPrimaryColor = '#03142c';

  String draftSecondaryColor = '#1df3d0';

  bool isValidPrimaryColor = false;

  bool isValidSecondaryColor = false;

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading_uploadedPhotoCompany = false;
  FFUploadedFile uploadedLocalFile_uploadedPhotoCompany =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPhotoCompany = '';

  bool isDataUploading_uploadedLogoCompany = false;
  FFUploadedFile uploadedLocalFile_uploadedLogoCompany =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedLogoCompany = '';

  bool isDataUploading_uploadedPhotoCompanyDk = false;
  FFUploadedFile uploadedLocalFile_uploadedPhotoCompanyDk =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPhotoCompanyDk = '';

  bool isDataUploading_uploadedLogoCompanyDk = false;
  FFUploadedFile uploadedLocalFile_uploadedLogoCompanyDk =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedLogoCompanyDk = '';

  // State field(s) for TextFieldPrimaryColor widget.
  FocusNode? textFieldPrimaryColorFocusNode;
  TextEditingController? textFieldPrimaryColorTextController;
  String? Function(BuildContext, String?)?
      textFieldPrimaryColorTextControllerValidator;
  String? _textFieldPrimaryColorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 6) {
      return '* Hex inválido';
    }
    if (val.length > 7) {
      return '* Hex inválido';
    }
    if (!RegExp('^#?[0-9A-Fa-f]{6}\$').hasMatch(val)) {
      return '* Hex inválido';
    }
    return null;
  }

  // State field(s) for TextFieldSecundaryColor widget.
  FocusNode? textFieldSecundaryColorFocusNode;
  TextEditingController? textFieldSecundaryColorTextController;
  String? Function(BuildContext, String?)?
      textFieldSecundaryColorTextControllerValidator;
  String? _textFieldSecundaryColorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '* obrigatório';
    }

    if (val.length < 6) {
      return '* Hex inválido';
    }
    if (val.length > 7) {
      return '* Hex inválido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldPrimaryColorTextControllerValidator =
        _textFieldPrimaryColorTextControllerValidator;
    textFieldSecundaryColorTextControllerValidator =
        _textFieldSecundaryColorTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldPrimaryColorFocusNode?.dispose();
    textFieldPrimaryColorTextController?.dispose();

    textFieldSecundaryColorFocusNode?.dispose();
    textFieldSecundaryColorTextController?.dispose();
  }
}
