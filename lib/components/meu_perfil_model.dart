import '/flutter_flow/flutter_flow_util.dart';
import 'meu_perfil_widget.dart' show MeuPerfilWidget;
import 'package:flutter/material.dart';

class MeuPerfilModel extends FlutterFlowModel<MeuPerfilWidget> {
  ///  Local state fields for this component.

  bool isUploadingImage = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadedPhoto = false;
  FFUploadedFile uploadedLocalFile_uploadedPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPhoto = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
