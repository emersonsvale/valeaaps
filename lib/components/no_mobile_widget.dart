import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'no_mobile_model.dart';
export 'no_mobile_model.dart';

class NoMobileWidget extends StatefulWidget {
  const NoMobileWidget({super.key});

  @override
  State<NoMobileWidget> createState() => _NoMobileWidgetState();
}

class _NoMobileWidgetState extends State<NoMobileWidget> {
  late NoMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.mobile_off_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 60.0,
            ),
            Text(
              'Atualmente, estamos sem acesso para dispositivos móveis. :\'(',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              'Não há dúvidas de que aplicativos e sites que não são otimizados para dispositivos móveis estão muito atrasados. Atualmente, cerca de 60% dos acessos a sites no mundo são feitos por celulares e tablets. Mas não se preocupe, estou desenvolvendo a melhor experiência mobile já criada. Fique atento!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF424242),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.07, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 1.0, 1.0, 1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image.asset(
                              'assets/images/emes.png',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchURL(
                        'https://www.linkedin.com/in/emersonsvale/');
                  },
                  child: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchURL('https://www.instagram.com/emersonsvale/');
                  },
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.youtube,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ].divide(const SizedBox(width: 24.0)),
            ),
            Text(
              'Emerson Vale',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
