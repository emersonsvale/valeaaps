import '/components/single_projeto_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'comp_projetos_model.dart';
export 'comp_projetos_model.dart';

class CompProjetosWidget extends StatefulWidget {
  const CompProjetosWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
  });

  final String? parameter1;
  final int? parameter2;
  final String? parameter3;
  final String? parameter4;
  final int? parameter5;

  @override
  State<CompProjetosWidget> createState() => _CompProjetosWidgetState();
}

class _CompProjetosWidgetState extends State<CompProjetosWidget>
    with TickerProviderStateMixin {
  late CompProjetosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompProjetosModel());

    animationsMap.addAll({
      'stackOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 640.0.ms,
            begin: const Offset(0.95, 0.95),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        if (animationsMap['stackOnActionTriggerAnimation'] != null) {
          await animationsMap['stackOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0)
              .whenComplete(animationsMap['stackOnActionTriggerAnimation']!
                  .controller
                  .reverse);
        }
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Builder(
        builder: (context) => InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: const AlignmentDirectional(0.0, 0.0)
                      .resolve(Directionality.of(context)),
                  child: SingleProjetoWidget(
                    id: widget.parameter5!,
                  ),
                );
              },
            );
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: const Color(0xFF564E4E),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    widget.parameter1!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0x004B39EF), Colors.black],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: const Color(0xFF564E4E),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/favorite_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      widget.parameter2!.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.parameter3!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            widget.parameter4!.maybeHandleOverflow(
                              maxChars: 50,
                              replacement: '…',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ).animateOnActionTrigger(
          animationsMap['stackOnActionTriggerAnimation']!,
        ),
      ),
    );
  }
}
