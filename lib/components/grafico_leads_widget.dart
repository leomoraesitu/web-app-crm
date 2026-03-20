import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grafico_leads_model.dart';
export 'grafico_leads_model.dart';

class GraficoLeadsWidget extends StatefulWidget {
  const GraficoLeadsWidget({super.key});

  @override
  State<GraficoLeadsWidget> createState() => _GraficoLeadsWidgetState();
}

class _GraficoLeadsWidgetState extends State<GraficoLeadsWidget> {
  late GraficoLeadsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraficoLeadsModel());

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

    return Padding(
      padding: EdgeInsets.all(12.0),
      child: AuthUserStreamWidget(
        builder: (context) => StreamBuilder<List<FonteLeadsRecord>>(
          stream: queryFonteLeadsRecord(
            parent: currentUserDocument?.empresaRef,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ),
              );
            }
            List<FonteLeadsRecord> containerFonteLeadsRecordList =
                snapshot.data!;

            return Container(
              width: double.infinity,
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
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  child: FlutterFlowBarChart(
                    barData: [
                      FFBarChartData(
                        yData: containerFonteLeadsRecordList
                            .map((d) => d.leads)
                            .toList(),
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
                      )
                    ],
                    xLabels: containerFonteLeadsRecordList
                        .map((d) => d.nome)
                        .toList(),
                    barWidth: 55.0,
                    barBorderRadius: BorderRadius.circular(0.0),
                    groupSpace: 15.0,
                    chartStylingInfo: ChartStylingInfo(
                      enableTooltip: true,
                      tooltipBackgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      showGrid: true,
                      showBorder: false,
                    ),
                    axisBounds: AxisBounds(
                      minY: -0.1,
                    ),
                    xAxisLabelInfo: AxisLabelInfo(
                      title: 'Fontes',
                      titleTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      showLabels: true,
                      labelTextStyle: FlutterFlowTheme.of(context)
                          .bodySmall
                          .override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
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
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                      labelInterval: 10.0,
                      reservedSize: 28.0,
                    ),
                    yAxisLabelInfo: AxisLabelInfo(
                      title: 'Quantidade',
                      titleTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      reservedSize: 42.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
