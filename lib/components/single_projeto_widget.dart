import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'single_projeto_model.dart';
export 'single_projeto_model.dart';

class SingleProjetoWidget extends StatefulWidget {
  const SingleProjetoWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<SingleProjetoWidget> createState() => _SingleProjetoWidgetState();
}

class _SingleProjetoWidgetState extends State<SingleProjetoWidget> {
  late SingleProjetoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleProjetoModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: FutureBuilder<List<ProjetosRow>>(
          future: (_model.requestCompleter ??= Completer<List<ProjetosRow>>()
                ..complete(ProjetosTable().querySingleRow(
                  queryFn: (q) => q.eqOrNull(
                    'id',
                    widget.id,
                  ),
                )))
              .future,
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
            List<ProjetosRow> projetProjetosRowList = snapshot.data!;

            final projetProjetosRow = projetProjetosRowList.isNotEmpty
                ? projetProjetosRowList.first
                : null;

            return Container(
              width: double.infinity,
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 900.0,
                maxHeight: 700.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 400.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        '${_model.image}',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        projetProjetosRow!.capa!,
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 24.0, 24.0, 24.0),
                                        child: Builder(
                                          builder: (context) {
                                            final imagens = (projetProjetosRow
                                                        .imgens
                                                        .map((e) => e)
                                                        .toList()
                                                        .toList() ??
                                                    [])
                                                .take(4)
                                                .toList();

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children:
                                                  List.generate(imagens.length,
                                                      (imagensIndex) {
                                                final imagensItem =
                                                    imagens[imagensIndex];
                                                return ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    imagensItem,
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                );
                                              }).divide(const SizedBox(width: 24.0)),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await ProjetosTable().update(
                                                data: {
                                                  'likes': (projetProjetosRow
                                                          .likes!) +
                                                      1,
                                                },
                                                matchingRows: (rows) =>
                                                    rows.eqOrNull(
                                                  'id',
                                                  widget.id,
                                                ),
                                              );
                                              safeSetState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted(
                                                      minWait: 1000,
                                                      maxWait: 3000);
                                            },
                                            child: Container(
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF1F2228),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/favorite_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
                                                          width: 24.0,
                                                          height: 24.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        projetProjetosRow.likes
                                                            ?.toString(),
                                                        '0',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
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
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF1F2228),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/close_24dp_D8CBC3_FILL1_wght400_GRAD0_opsz24.png',
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
                                        ].divide(const SizedBox(width: 12.0)),
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FutureBuilder<List<FerramentasRow>>(
                            future: FerramentasTable().queryRows(
                              queryFn: (q) => q.inFilterOrNull(
                                'id',
                                projetProjetosRow.ferramentas,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 10.0,
                                    height: 10.0,
                                    child: SpinKitDoubleBounce(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 10.0,
                                    ),
                                  ),
                                );
                              }
                              List<FerramentasRow> rowFerramentasRowList =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    rowFerramentasRowList.length, (rowIndex) {
                                  final rowFerramentasRow =
                                      rowFerramentasRowList[rowIndex];
                                  return AlignedTooltip(
                                    content: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 6.0, 12.0, 6.0),
                                      child: Text(
                                        rowFerramentasRow.nome!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.down,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: const Duration(milliseconds: 1),
                                    showDuration: const Duration(milliseconds: 1),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        rowFerramentasRow.image!,
                                        width: 30.0,
                                        height: 30.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }).divide(const SizedBox(width: 12.0)),
                              );
                            },
                          ),
                          Text(
                            valueOrDefault<String>(
                              projetProjetosRow.titulo,
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 34.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              projetProjetosRow.descricao,
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
