import '/components/meu_perfil_widget.dart';
import '/components/minha_empresa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'menu_side_bar_tablet_model.dart';
export 'menu_side_bar_tablet_model.dart';

class MenuSideBarTabletWidget extends StatefulWidget {
  const MenuSideBarTabletWidget({
    super.key,
    required this.iconDashbord,
    required this.iconLeads,
    required this.iconMeuTime,
    required this.backgroundDash,
    required this.backgroundLeads,
    required this.backgroundMeuTime,
  });

  final Widget? iconDashbord;
  final Widget? iconLeads;
  final Widget? iconMeuTime;
  final Color? backgroundDash;
  final Color? backgroundLeads;
  final Color? backgroundMeuTime;

  @override
  State<MenuSideBarTabletWidget> createState() =>
      _MenuSideBarTabletWidgetState();
}

class _MenuSideBarTabletWidgetState extends State<MenuSideBarTabletWidget> {
  late MenuSideBarTabletModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuSideBarTabletModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        width: 85.0,
        height: double.infinity,
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
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/images/Ativo_4.png'
                            : 'assets/images/logo_nocode3.png',
                        width: 35.0,
                        height: 100.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      DashboardWidget.routeName,
                      extra: <String, dynamic>{
                        '__transition_info__': TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: widget.backgroundDash,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.iconDashbord!,
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      LeadsWidget.routeName,
                      extra: <String, dynamic>{
                        '__transition_info__': TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: widget.backgroundLeads,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.iconLeads!,
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      TimeWidget.routeName,
                      extra: <String, dynamic>{
                        '__transition_info__': TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: widget.backgroundMeuTime,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.iconMeuTime!,
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: MinhaEmpresaWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (Theme.of(context).brightness == Brightness.light)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setDarkModeSetting(context, ThemeMode.dark);
                          },
                          child: Container(
                            width: 60.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Icon(
                                      Icons.sunny,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Icon(
                                      Icons.mode_night,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (Theme.of(context).brightness == Brightness.dark)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setDarkModeSetting(context, ThemeMode.light);
                          },
                          child: Container(
                            width: 60.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Icon(
                                      Icons.sunny,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Icon(
                                      Icons.mode_night,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: MeuPerfilWidget(),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 55.0,
                                height: 55.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/NOVA_FOTO_PERFIL_70K.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
