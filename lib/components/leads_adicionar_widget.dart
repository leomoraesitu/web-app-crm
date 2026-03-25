import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leads_adicionar_model.dart';
export 'leads_adicionar_model.dart';

class LeadsAdicionarWidget extends StatefulWidget {
  const LeadsAdicionarWidget({super.key});

  @override
  State<LeadsAdicionarWidget> createState() => _LeadsAdicionarWidgetState();
}

class _LeadsAdicionarWidgetState extends State<LeadsAdicionarWidget> {
  late LeadsAdicionarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeadsAdicionarModel());

    _model.nomeTextController ??= TextEditingController();
    _model.nomeFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.telefoneTextController ??= TextEditingController();
    _model.telefoneFocusNode ??= FocusNode();

    _model.descricaoTextController ??= TextEditingController();
    _model.descricaoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: 500.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adicionar Lead',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            'Informações Lead',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 35.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 8.0),
                          child: TextFormField(
                            key: ValueKey(FFAppConstants.kLeadNameInput),
                            controller: _model.nomeTextController,
                            focusNode: _model.nomeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.nomeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                _model.isValidName = false;
                                safeSetState(() {});
                                _model.isValidNameOutput = true;
                                if (_model.formKey2.currentState == null ||
                                    !_model.formKey2.currentState!.validate()) {
                                  safeSetState(
                                      () => _model.isValidNameOutput = false);
                                  return;
                                }
                                if (_model.isValidNameOutput == true) {
                                  _model.isValidName = true;
                                  safeSetState(() {});
                                } else {
                                  _model.isValidName = false;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            enabled: true,
                            autofillHints: [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Nome',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              suffixIcon: _model
                                      .nomeTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.nomeTextController?.clear();
                                        _model.isValidName = false;
                                        safeSetState(() {});
                                        _model.isValidNameOutput = true;
                                        if (_model.formKey2.currentState ==
                                                null ||
                                            !_model.formKey2.currentState!
                                                .validate()) {
                                          safeSetState(() =>
                                              _model.isValidNameOutput = false);
                                          return;
                                        }
                                        if (_model.isValidNameOutput == true) {
                                          _model.isValidName = true;
                                          safeSetState(() {});
                                        } else {
                                          _model.isValidName = false;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.name,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.nomeTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey5,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: TextFormField(
                            key: ValueKey(FFAppConstants.kLeadEmailInput),
                            controller: _model.emailTextController,
                            focusNode: _model.emailFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.emailTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                _model.isValidEmail = false;
                                safeSetState(() {});
                                _model.isValidEmailOutput = true;
                                if (_model.formKey5.currentState == null ||
                                    !_model.formKey5.currentState!.validate()) {
                                  safeSetState(
                                      () => _model.isValidEmailOutput = false);
                                  return;
                                }
                                if (_model.isValidEmailOutput == true) {
                                  _model.isValidEmail = true;
                                  safeSetState(() {});
                                } else {
                                  _model.isValidEmail = false;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            enabled: _model.isValidName == true,
                            autofillHints: [AutofillHints.email],
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Email',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              suffixIcon: _model
                                      .emailTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.emailTextController?.clear();
                                        _model.isValidEmail = false;
                                        safeSetState(() {});
                                        _model.isValidEmailOutput = true;
                                        if (_model.formKey5.currentState ==
                                                null ||
                                            !_model.formKey5.currentState!
                                                .validate()) {
                                          safeSetState(() => _model
                                              .isValidEmailOutput = false);
                                          return;
                                        }
                                        if (_model.isValidEmailOutput == true) {
                                          _model.isValidEmail = true;
                                          safeSetState(() {});
                                        } else {
                                          _model.isValidEmail = false;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.emailTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey3,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: TextFormField(
                            key: ValueKey(FFAppConstants.kLeadPhoneInput),
                            controller: _model.telefoneTextController,
                            focusNode: _model.telefoneFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.telefoneTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                _model.isValidPhone = false;
                                safeSetState(() {});
                                _model.isValidPhoneOutput = true;
                                if (_model.formKey3.currentState == null ||
                                    !_model.formKey3.currentState!.validate()) {
                                  safeSetState(
                                      () => _model.isValidPhoneOutput = false);
                                  return;
                                }
                                if (_model.isValidPhoneOutput == true) {
                                  _model.isValidPhone = true;
                                  safeSetState(() {});
                                } else {
                                  _model.isValidPhone = false;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            enabled: (_model.isValidName == true) &&
                                (_model.isValidEmail == true),
                            autofillHints: [AutofillHints.telephoneNumber],
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Telefone',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              suffixIcon: _model
                                      .telefoneTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.telefoneTextController?.clear();
                                        _model.isValidPhone = false;
                                        safeSetState(() {});
                                        _model.isValidPhoneOutput = true;
                                        if (_model.formKey3.currentState ==
                                                null ||
                                            !_model.formKey3.currentState!
                                                .validate()) {
                                          safeSetState(() => _model
                                              .isValidPhoneOutput = false);
                                          return;
                                        }
                                        if (_model.isValidPhoneOutput == true) {
                                          _model.isValidPhone = true;
                                          safeSetState(() {});
                                        } else {
                                          _model.isValidPhone = false;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.phone,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.telefoneTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey4,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: TextFormField(
                            key: ValueKey(FFAppConstants.kLeadDescriptionInput),
                            controller: _model.descricaoTextController,
                            focusNode: _model.descricaoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.descricaoTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                _model.isValidDescription = false;
                                safeSetState(() {});
                                _model.isValidDescriptionOutput = true;
                                if (_model.formKey4.currentState == null ||
                                    !_model.formKey4.currentState!.validate()) {
                                  safeSetState(() =>
                                      _model.isValidDescriptionOutput = false);
                                  return;
                                }
                                if (_model.isValidDescriptionOutput == true) {
                                  _model.isValidDescription = true;
                                  safeSetState(() {});
                                } else {
                                  _model.isValidDescription = false;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            enabled: (_model.isValidName == true) &&
                                (_model.isValidEmail == true) &&
                                (_model.isValidPhone == true),
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Descrição',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              suffixIcon: _model
                                      .descricaoTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.descricaoTextController?.clear();
                                        _model.isValidDescription = false;
                                        safeSetState(() {});
                                        _model.isValidDescriptionOutput = true;
                                        if (_model.formKey4.currentState ==
                                                null ||
                                            !_model.formKey4.currentState!
                                                .validate()) {
                                          safeSetState(() =>
                                              _model.isValidDescriptionOutput =
                                                  false);
                                          return;
                                        }
                                        if (_model.isValidDescriptionOutput ==
                                            true) {
                                          _model.isValidDescription = true;
                                          safeSetState(() {});
                                        } else {
                                          _model.isValidDescription = false;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            maxLines: 2,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.descricaoTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: FlutterFlowDropDown<String>(
                            key: ValueKey(FFAppConstants.kLeadSourceDropdown),
                            controller: _model.dropDownFonteValueController ??=
                                FormFieldController<String>(null),
                            optionsHasValueKeys: true,
                            options: [
                              'Instagram',
                              'Email',
                              'Telefone',
                              'WhatsApp'
                            ],
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.dropDownFonteValue = val);
                              _model.isValidSource = false;
                              safeSetState(() {});
                              _model.isValidSourceOutput = true;
                              if (_model.formKey1.currentState == null ||
                                  !_model.formKey1.currentState!.validate()) {
                                safeSetState(
                                    () => _model.isValidSourceOutput = false);
                                return;
                              }
                              if (_model.dropDownFonteValue == null) {
                                _model.isValidSourceOutput = false;
                                safeSetState(() {});
                                return;
                              }
                              if (_model.isValidSourceOutput == true) {
                                _model.isValidSource = true;
                                safeSetState(() {});
                              } else {
                                _model.isValidSource = false;
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 60.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'Selecione a origem do lead',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            disabled: (_model.isValidName == false) ||
                                (_model.isValidEmail == false) ||
                                (_model.isValidPhone == false) ||
                                (_model.isValidDescription == false),
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Cancelar',
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          key: ValueKey(FFAppConstants.kLeadSaveButton),
                          onPressed: ((_model.isValidName == false) ||
                                  (_model.isValidEmail == false) ||
                                  (_model.isValidPhone == false) ||
                                  (_model.isValidDescription == false) ||
                                  (_model.isValidSource == false))
                              ? null
                              : () async {
                                  if (_model.formKey2.currentState == null ||
                                      !_model.formKey2.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.formKey5.currentState == null ||
                                      !_model.formKey5.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.formKey3.currentState == null ||
                                      !_model.formKey3.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.formKey4.currentState == null ||
                                      !_model.formKey4.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.formKey1.currentState == null ||
                                      !_model.formKey1.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.dropDownFonteValue == null) {
                                    return;
                                  }

                                  var leadsRecordReference =
                                      LeadsRecord.createDoc(
                                          currentUserDocument!.empresaRef!);
                                  await leadsRecordReference
                                      .set(createLeadsRecordData(
                                    nome: _model.nomeTextController.text,
                                    descritivo:
                                        _model.descricaoTextController.text,
                                    fonte: _model.dropDownFonteValue,
                                    email: _model.emailTextController.text,
                                    telefone:
                                        _model.telefoneTextController.text,
                                    status: 'Novo Lead',
                                    dataCriacao: getCurrentTimestamp,
                                    userRef: currentUserReference,
                                    userNome: currentUserDisplayName,
                                    userLogo: currentUserPhoto,
                                  ));
                                  _model.createLeadOutput =
                                      LeadsRecord.getDocumentFromData(
                                          createLeadsRecordData(
                                            nome:
                                                _model.nomeTextController.text,
                                            descritivo: _model
                                                .descricaoTextController.text,
                                            fonte: _model.dropDownFonteValue,
                                            email:
                                                _model.emailTextController.text,
                                            telefone: _model
                                                .telefoneTextController.text,
                                            status: 'Novo Lead',
                                            dataCriacao: getCurrentTimestamp,
                                            userRef: currentUserReference,
                                            userNome: currentUserDisplayName,
                                            userLogo: currentUserPhoto,
                                          ),
                                          leadsRecordReference);
                                  if (_model.createLeadOutput?.reference.path !=
                                          null &&
                                      _model.createLeadOutput?.reference.path !=
                                          '') {
                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'totalLeads': FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    _model.docLeadFonte =
                                        await queryFonteLeadsRecordOnce(
                                      parent: currentUserDocument?.empresaRef,
                                      queryBuilder: (fonteLeadsRecord) =>
                                          fonteLeadsRecord.where(
                                        'nome',
                                        isEqualTo: _model.dropDownFonteValue,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);

                                    await _model.docLeadFonte!.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'leads': FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Sucesso!'),
                                          content: Text('Lead adicionado'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    safeSetState(() {
                                      _model.nomeTextController?.clear();
                                      _model.emailTextController?.clear();
                                      _model.telefoneTextController?.clear();
                                      _model.descricaoTextController?.clear();
                                    });
                                    Navigator.pop(context);
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Erro'),
                                          content: Text(
                                              'Erro desconhecido ao adicionar Lead'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                          text: 'Adicionar',
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: valueOrDefault<Color>(
                              Theme.of(context).brightness == Brightness.dark
                                  ? valueOrDefault<Color>(
                                      functions.hexToColor(
                                          FFAppState().effectiveSecondaryHex),
                                      FlutterFlowTheme.of(context).primary,
                                    )
                                  : valueOrDefault<Color>(
                                      functions.hexToColor(
                                          FFAppState().effectivePrimaryHex),
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                              FlutterFlowTheme.of(context).primary,
                            ),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                            disabledColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            disabledTextColor:
                                FlutterFlowTheme.of(context).accent3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
