import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p_curriculo_model.dart';
export 'p_curriculo_model.dart';

class PCurriculoWidget extends StatefulWidget {
  const PCurriculoWidget({
    super.key,
    String? parameter1,
  }) : parameter1 = parameter1 ?? '';

  final String parameter1;

  @override
  State<PCurriculoWidget> createState() => _PCurriculoWidgetState();
}

class _PCurriculoWidgetState extends State<PCurriculoWidget> {
  late PCurriculoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PCurriculoModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formação',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 34.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Conheça minha trajetória acadêmica e profissional! Aqui estão as formações e experiências que moldaram minha expertise em desenvolvimento de software e tecnologia. Cada etapa representa um compromisso contínuo com aprendizado, inovação e excelência.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent4,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                                spreadRadius: 2.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/menu_book_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      AutoSizeText(
                        'Educação',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ].divide(const SizedBox(width: 24.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 0.0),
                    child: FutureBuilder<List<EducacaoRow>>(
                      future: EducacaoTable().queryRows(
                        queryFn: (q) => q,
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
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 10.0,
                              ),
                            ),
                          );
                        }
                        List<EducacaoRow> columnEducacaoRowList =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnEducacaoRowList.length,
                              (columnIndex) {
                            final columnEducacaoRow =
                                columnEducacaoRowList[columnIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              offset: const Offset(
                                                0.0,
                                                0.0,
                                              ),
                                              spreadRadius: 1.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(99.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        columnEducacaoRow.titulo!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        '${dateTimeFormat(
                                          "yyyy",
                                          columnEducacaoRow.datainicio,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}-${dateTimeFormat(
                                          "yyyy",
                                          columnEducacaoRow.datafim,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Text(
                                        columnEducacaoRow.descricao!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 25.0)),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent4,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                                spreadRadius: 2.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/co_present_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      AutoSizeText(
                        'Experiências',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ].divide(const SizedBox(width: 24.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 0.0),
                    child: FutureBuilder<List<ExperienciasRow>>(
                      future: ExperienciasTable().queryRows(
                        queryFn: (q) => q,
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
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 10.0,
                              ),
                            ),
                          );
                        }
                        List<ExperienciasRow> columnExperienciasRowList =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnExperienciasRowList.length, (columnIndex) {
                            final columnExperienciasRow =
                                columnExperienciasRowList[columnIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              offset: const Offset(
                                                0.0,
                                                0.0,
                                              ),
                                              spreadRadius: 1.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(99.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        columnExperienciasRow.titulo!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        '${dateTimeFormat(
                                          "yyyy",
                                          columnExperienciasRow.datainicio,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}-${dateTimeFormat(
                                          "yyyy",
                                          columnExperienciasRow.datafim,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Text(
                                        columnExperienciasRow.cargo!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 25.0)),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Competências',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 28.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                child: FutureBuilder<List<FerramentasRow>>(
                  future: FerramentasTable().queryRows(
                    queryFn: (q) => q,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 10.0,
                          height: 10.0,
                          child: SpinKitDoubleBounce(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 10.0,
                          ),
                        ),
                      );
                    }
                    List<FerramentasRow> columnFerramentasRowList =
                        snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnFerramentasRowList.length,
                          (columnIndex) {
                        final columnFerramentasRow =
                            columnFerramentasRowList[columnIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                columnFerramentasRow.nome,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            LinearPercentIndicator(
                              percent: columnFerramentasRow.dominio!,
                              lineHeight: 12.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).accent4,
                              barRadius: const Radius.circular(10.0),
                              padding: EdgeInsets.zero,
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        );
                      }).divide(const SizedBox(height: 12.0)),
                    );
                  },
                ),
              ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
