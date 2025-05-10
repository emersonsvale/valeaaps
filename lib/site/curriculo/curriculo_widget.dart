import '/components/menu_web_widget.dart';
import '/components/p_curriculo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'curriculo_model.dart';
export 'curriculo_model.dart';

class CurriculoWidget extends StatefulWidget {
  const CurriculoWidget({super.key});

  static String routeName = 'Curriculo';
  static String routePath = 'curriculo';

  @override
  State<CurriculoWidget> createState() => _CurriculoWidgetState();
}

class _CurriculoWidgetState extends State<CurriculoWidget>
    with TickerProviderStateMixin {
  late CurriculoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurriculoModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 480.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(100.0, 100.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 410.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(100.0, 100.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(1.19, 1.45),
                  child: Container(
                    width: 455.0,
                    height: 455.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF323030),
                      shape: BoxShape.circle,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation1']!),
                ),
                Container(
                  width: 455.0,
                  height: 455.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF323030),
                    shape: BoxShape.circle,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100.0,
                      sigmaY: 100.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 1140.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 150.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.pCurriculoModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: PCurriculoWidget(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                height: 140.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.menuWebModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuWebWidget(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
