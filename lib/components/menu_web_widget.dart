import '/components/menu_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'menu_web_model.dart';
export 'menu_web_model.dart';

class MenuWebWidget extends StatefulWidget {
  const MenuWebWidget({super.key});

  @override
  State<MenuWebWidget> createState() => _MenuWebWidgetState();
}

class _MenuWebWidgetState extends State<MenuWebWidget> {
  late MenuWebModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuWebModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(99.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 12.0,
              sigmaY: 12.0,
            ),
            child: Container(
              width: double.infinity,
              height: 100.0,
              constraints: const BoxConstraints(
                maxWidth: 1140.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99.0),
                border: Border.all(
                  color: const Color(0xFF564E4E),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          'Home',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 0.0, 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/Ativo%201@4x.png',
                                width: 71.0,
                                height: 40.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Emerson do Vale',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                  Text(
                                    'Vale Apps',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered1 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered1 = false);
                            }),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Home',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Text(
                                'Início',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: _model.mouseRegionHovered1
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = false);
                            }),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Curriculo',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Text(
                                'Currículo',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: _model.mouseRegionHovered2
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered3 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered3 = false);
                            }),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Projetos',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Text(
                                'Projetos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: _model.mouseRegionHovered3
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Builder(
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
                                      alignment: const AlignmentDirectional(1.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: const SizedBox(
                                        height: double.infinity,
                                        width: 250.0,
                                        child: MenuMobileWidget(),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: const Color(0xFF564E4E),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/menu_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ].divide(const SizedBox(width: 24.0)),
                    ),
                  ].divide(const SizedBox(width: 6.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
