import '/backend/supabase/supabase.dart';
import '/components/comp_projetos_widget.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'projetos_model.dart';
export 'projetos_model.dart';

class ProjetosWidget extends StatefulWidget {
  const ProjetosWidget({super.key});

  @override
  State<ProjetosWidget> createState() => _ProjetosWidgetState();
}

class _ProjetosWidgetState extends State<ProjetosWidget>
    with TickerProviderStateMixin {
  late ProjetosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjetosModel());

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
            begin: const Offset(1.0, 1.0),
            end: const Offset(100.0, 100.0),
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
            begin: const Offset(1.0, 1.0),
            end: const Offset(100.0, 100.0),
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
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.19, 1.45),
                    child: Container(
                      width: 455.0,
                      height: 455.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF323030),
                        shape: BoxShape.circle,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Container(
                    width: 455.0,
                    height: 455.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF323030),
                      shape: BoxShape.circle,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100.0,
                        sigmaY: 100.0,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.menuWebModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const MenuWebWidget(),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: Container(
                                            width: double.infinity,
                                            constraints: const BoxConstraints(
                                              maxWidth: 1140.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 24.0, 24.0, 0.0),
                                              child: Text(
                                                'Projetos',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 24.0, 24.0, 24.0),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 1140.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child:
                                              FutureBuilder<List<ProjetosRow>>(
                                            future: ProjetosTable().queryRows(
                                              queryFn: (q) =>
                                                  q.order('created_at'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 10.0,
                                                    height: 10.0,
                                                    child: SpinKitDoubleBounce(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 10.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProjetosRow>
                                                  gridViewProjetosRowList =
                                                  snapshot.data!;

                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              500.0
                                                          ? 2
                                                          : 3,
                                                  childAspectRatio: 1.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    gridViewProjetosRowList
                                                        .length,
                                                itemBuilder:
                                                    (context, gridViewIndex) {
                                                  final gridViewProjetosRow =
                                                      gridViewProjetosRowList[
                                                          gridViewIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .compProjetosModels
                                                        .getModel(
                                                      '0',
                                                      gridViewIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    updateOnChange: true,
                                                    child: CompProjetosWidget(
                                                      key: const Key(
                                                        'Key5e0_${'0'}',
                                                      ),
                                                      parameter1:
                                                          gridViewProjetosRow
                                                              .capa,
                                                      parameter2:
                                                          valueOrDefault<int>(
                                                        gridViewProjetosRow
                                                            .likes,
                                                        0,
                                                      ),
                                                      parameter3:
                                                          gridViewProjetosRow
                                                              .titulo,
                                                      parameter4:
                                                          gridViewProjetosRow
                                                              .descricao,
                                                      parameter5:
                                                          gridViewProjetosRow
                                                              .id,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
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
      ),
    );
  }
}
