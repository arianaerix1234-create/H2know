import '/components/pop_up_custom_amount_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

import 'dailyhidration_model.dart';
export 'dailyhidration_model.dart';

class DailyhidrationWidget extends StatefulWidget {
  const DailyhidrationWidget({super.key});

  static String routeName = 'dailyhidration';
  static String routePath = '/dailyhidration';

  @override
  State<DailyhidrationWidget> createState() => _DailyhidrationWidgetState();
}

class _DailyhidrationWidgetState extends State<DailyhidrationWidget> {
  late DailyhidrationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyhidrationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.07, -0.61),
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    19,
                                    10,
                                  ),
                                )
                              ],
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.18, -0.25),
                                  child: CircularPercentIndicator(
                                    percent: (double var1, double var2) {
                                      return var2 > 0 ? (var1 / var2) : 0.0;
                                    }(
                                        FFAppState().apaBautaAstazi.toDouble(),
                                        FFAppState()
                                            .targetHidratareZilnic
                                            .toDouble()),
                                    radius: 125,
                                    lineWidth: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor:
                                        FlutterFlowTheme.of(context).primary,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    center: Text(
                                      (double var1, double var2) {
                                        return var2 > 0
                                            ? ((var1 / var2) * 100)
                                                    .round()
                                                    .toString() +
                                                "%"
                                            : "0%";
                                      }(
                                          FFAppState()
                                              .apaBautaAstazi
                                              .toDouble(),
                                          FFAppState()
                                              .targetHidratareZilnic
                                              .toDouble()),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.05, 1),
                                  child: Text(
                                    (int var1, int var2) {
                                      return (var2 - var1) > 0
                                          ? (var2 - var1).toString() +
                                              " mL remaining"
                                          : "Goal reached! 🎉";
                                    }(FFAppState().apaBautaAstazi,
                                        FFAppState().targetHidratareZilnic),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.03, 0.9),
                                  child: Text(
                                    '${FFAppState().apaBautaAstazi.toString()}/${FFAppState().targetHidratareZilnic.toString()}mL',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.03, 0.51),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/69b58196d648355e7c4cc145.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.13, -1),
                          child: Text(
                            'Daily Hydration',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 37,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.87, 0.24),
                          child: Text(
                            'Quick add',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 30,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.86, 0.29),
                          child: Container(
                            width: 388.2,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color(0xFF578EC5),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.94, 0.55),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().apaBautaAstazi =
                                  FFAppState().apaBautaAstazi + 1000;
                              FFAppState().updateMonthlyIntakeAtIndex(
                                functions.getAziIndex(),
                                (e) => e + 1000,
                              );
                              FFAppState().updateWeeklyIntakeAtIndex(
                                functions.getSaptamanaIndex()!,
                                (e) => e + 1000,
                              );
                              safeSetState(() {});
                            },
                            text: '+1000 mL',
                            options: FFButtonOptions(
                              width: 85,
                              height: 85,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, 0.55),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().apaBautaAstazi =
                                  FFAppState().apaBautaAstazi + 250;
                              FFAppState().updateMonthlyIntakeAtIndex(
                                functions.getAziIndex(),
                                (e) => e + 250,
                              );
                              FFAppState().updateWeeklyIntakeAtIndex(
                                functions.getSaptamanaIndex()!,
                                (e) => e + 250,
                              );
                              safeSetState(() {});
                            },
                            text: '+250 mL',
                            options: FFButtonOptions(
                              width: 85,
                              height: 85,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.32, 0.55),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().apaBautaAstazi =
                                  FFAppState().apaBautaAstazi + 750;
                              FFAppState().updateMonthlyIntakeAtIndex(
                                functions.getAziIndex(),
                                (e) => e + 750,
                              );
                              FFAppState().updateWeeklyIntakeAtIndex(
                                functions.getSaptamanaIndex()!,
                                (e) => e + 750,
                              );
                              safeSetState(() {});
                            },
                            text: '+750 mL',
                            options: FFButtonOptions(
                              width: 85,
                              height: 85,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.31, 0.55),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().apaBautaAstazi =
                                  FFAppState().apaBautaAstazi + 500;
                              FFAppState().updateMonthlyIntakeAtIndex(
                                functions.getAziIndex(),
                                (e) => e + 500,
                              );
                              FFAppState().updateWeeklyIntakeAtIndex(
                                functions.getSaptamanaIndex()!,
                                (e) => e + 500,
                              );
                              safeSetState(() {});
                            },
                            text: '+500 mL',
                            options: FFButtonOptions(
                              width: 85,
                              height: 85,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.04, 0.83),
                          child: Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: false,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0, 0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0, 0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            height: 200,
                                            width: 300,
                                            child: PopUpCustomAmountWidget(),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              text: '+ Add costum amount',
                              options: FFButtonOptions(
                                width: 300,
                                height: 60,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                iconPadding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.05, -0.9),
                          child: Text(
                            'Stay hydratated, stay healthy',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, -1),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(CalcApaListaWidget.routeName);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.91, -1.01),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(StatisticiWidget.routeName);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
