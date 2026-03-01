import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
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
                  yData: List.generate(random_data.randomInteger(10, 30),
                      (index) => random_data.randomInteger(1, 5)),
                  color: FlutterFlowTheme.of(context).primary,
                )
              ],
              xLabels: List.generate(
                  random_data.randomInteger(1, 5),
                  (index) => random_data.randomString(
                        1,
                        1,
                        true,
                        false,
                        false,
                      )),
              barWidth: 16.0,
              barBorderRadius: BorderRadius.circular(0.0),
              groupSpace: 8.0,
              chartStylingInfo: ChartStylingInfo(
                enableTooltip: true,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                showGrid: true,
                showBorder: false,
              ),
              axisBounds: AxisBounds(),
              xAxisLabelInfo: AxisLabelInfo(
                title: 'Leads',
                titleTextStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                reservedSize: 28.0,
              ),
              yAxisLabelInfo: AxisLabelInfo(
                title: 'Quantidade',
                titleTextStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                reservedSize: 42.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
