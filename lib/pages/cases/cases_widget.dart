import '/backend/supabase/supabase.dart';
import '/components/com_proj_netflix_carregamento_widget.dart';
import '/components/com_proj_netflix_widget.dart';
import '/components/comp_index_netflix_widget.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cases_model.dart';
export 'cases_model.dart';

class CasesWidget extends StatefulWidget {
  const CasesWidget({super.key});

  static String routeName = 'Cases';
  static String routePath = 'cases';

  @override
  State<CasesWidget> createState() => _CasesWidgetState();
}

class _CasesWidgetState extends State<CasesWidget>
    with TickerProviderStateMixin {
  late CasesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CasesModel());

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
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              constraints: BoxConstraints(
                                                maxHeight: 800.0,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    Opacity(
                                                      opacity: 0.5,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        child: Image.network(
                                                          '${_model.imagem}',
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Colors
                                                                  .transparent,
                                                              Color(0xE5000000)
                                                            ],
                                                            stops: [0.0, 0.5],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0, 1.0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.25,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Colors.black,
                                                            Colors.transparent
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  0, 1.0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 1200.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      48.0,
                                                                      24.0,
                                                                      48.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 518.0,
                                                                height: 360.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        'https://abibhwgxbdlwhswjatay.supabase.co/storage/v1/object/public/images/logos/Ativo%201@4x.png',
                                                                        width:
                                                                            51.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Cases',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                32.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Aqui você encontrará uma seleção dos meus principais projetos, que destacam minha experiência no desenvolvimento de soluções criativas e eficientes. Com foco em tecnologias como FlutterFlow, Bubble.io, Supabase e Xano, cada projeto reflete minha dedicação em entregar resultados de alto impacto. Explore e conheça mais sobre meu trabalho!',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await launchURL('https://api.whatsapp.com/send?phone=5599991562914&text=Ol%C3%A1,%20Emerson,%20estou%20vindo%20do%20seu%20site%20e%20gostaria%20de%20falar%20sobre%20projetos.');
                                                                          },
                                                                          text:
                                                                              'Ver mais',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0xFFD8CBC3),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await launchURL('https://api.whatsapp.com/send?phone=5599991562914&text=Ol%C3%A1,%20Emerson,%20estou%20vindo%20do%20seu%20site%20e%20gostaria%20de%20falar%20sobre%20projetos.');
                                                                          },
                                                                          text:
                                                                              'Quero um app assim',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0x45D8CBC3),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 5.0)),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          24.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxHeight:
                                                                      123.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        ProjetosRow>>(
                                                                  future: ProjetosTable()
                                                                      .queryRows(
                                                                    queryFn:
                                                                        (q) =>
                                                                            q,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            ComProjNetflixCarregamentoWidget(),
                                                                      );
                                                                    }
                                                                    List<ProjetosRow>
                                                                        listViewProjetosRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      itemCount:
                                                                          listViewProjetosRowList
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              width: 5.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewProjetosRow =
                                                                            listViewProjetosRowList[listViewIndex];
                                                                        return wrapWithModel(
                                                                          model: _model
                                                                              .comProjNetflixModels1
                                                                              .getModel(
                                                                            listViewProjetosRow.id.toString(),
                                                                            listViewIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              ComProjNetflixWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keyk1q_${listViewProjetosRow.id.toString()}',
                                                                            ),
                                                                            idProjete:
                                                                                listViewProjetosRow.slug!,
                                                                            nomeProjeto:
                                                                                listViewProjetosRow.titulo!,
                                                                            imagem:
                                                                                listViewProjetosRow.capa!,
                                                                            imagemback:
                                                                                (imagem) async {
                                                                              _model.imagem = imagem!;
                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 24.0)),
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
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 1200.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'Ultimos lançamentos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 123.0,
                                                  decoration: BoxDecoration(),
                                                  child: FutureBuilder<
                                                      List<ProjetosRow>>(
                                                    future: ProjetosTable()
                                                        .queryRows(
                                                      queryFn: (q) =>
                                                          q.order('created_at'),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child:
                                                              ComProjNetflixCarregamentoWidget(),
                                                        );
                                                      }
                                                      List<ProjetosRow>
                                                          listViewProjetosRowList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          24.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewProjetosRowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 5.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewProjetosRow =
                                                              listViewProjetosRowList[
                                                                  listViewIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .comProjNetflixModels2
                                                                .getModel(
                                                              listViewProjetosRow
                                                                  .id
                                                                  .toString(),
                                                              listViewIndex,
                                                            ),
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ComProjNetflixWidget(
                                                              key: Key(
                                                                'Keyacr_${listViewProjetosRow.id.toString()}',
                                                              ),
                                                              idProjete:
                                                                  listViewProjetosRow
                                                                      .slug!,
                                                              nomeProjeto:
                                                                  listViewProjetosRow
                                                                      .titulo!,
                                                              imagem:
                                                                  listViewProjetosRow
                                                                      .capa!,
                                                              imagemback:
                                                                  (imagem) async {},
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 1200.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'Web apps e sites',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 123.0,
                                                  decoration: BoxDecoration(),
                                                  child: FutureBuilder<
                                                      List<ProjetosRow>>(
                                                    future: ProjetosTable()
                                                        .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'mobile',
                                                        false,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child:
                                                              ComProjNetflixCarregamentoWidget(),
                                                        );
                                                      }
                                                      List<ProjetosRow>
                                                          listViewProjetosRowList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          24.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewProjetosRowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 5.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewProjetosRow =
                                                              listViewProjetosRowList[
                                                                  listViewIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .comProjNetflixModels3
                                                                .getModel(
                                                              listViewProjetosRow
                                                                  .id
                                                                  .toString(),
                                                              listViewIndex,
                                                            ),
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ComProjNetflixWidget(
                                                              key: Key(
                                                                'Keypom_${listViewProjetosRow.id.toString()}',
                                                              ),
                                                              idProjete:
                                                                  listViewProjetosRow
                                                                      .slug!,
                                                              nomeProjeto:
                                                                  listViewProjetosRow
                                                                      .titulo!,
                                                              imagem:
                                                                  listViewProjetosRow
                                                                      .capa!,
                                                              imagemback:
                                                                  (imagem) async {},
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 1200.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'Mobile',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 123.0,
                                                  decoration: BoxDecoration(),
                                                  child: FutureBuilder<
                                                      List<ProjetosRow>>(
                                                    future: ProjetosTable()
                                                        .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'mobile',
                                                        true,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child:
                                                              ComProjNetflixCarregamentoWidget(),
                                                        );
                                                      }
                                                      List<ProjetosRow>
                                                          listViewProjetosRowList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          24.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewProjetosRowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 5.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewProjetosRow =
                                                              listViewProjetosRowList[
                                                                  listViewIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .comProjNetflixModels4
                                                                .getModel(
                                                              listViewProjetosRow
                                                                  .id
                                                                  .toString(),
                                                              listViewIndex,
                                                            ),
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ComProjNetflixWidget(
                                                              key: Key(
                                                                'Keyxr6_${listViewProjetosRow.id.toString()}',
                                                              ),
                                                              idProjete:
                                                                  listViewProjetosRow
                                                                      .slug!,
                                                              nomeProjeto:
                                                                  listViewProjetosRow
                                                                      .titulo!,
                                                              imagem:
                                                                  listViewProjetosRow
                                                                      .capa!,
                                                              imagemback:
                                                                  (imagem) async {},
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 1200.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'Top 10',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 154.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 1440.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: FutureBuilder<
                                                      List<ProjetosRow>>(
                                                    future: ProjetosTable()
                                                        .queryRows(
                                                      queryFn: (q) => q.order(
                                                          'ranking',
                                                          ascending: true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 10.0,
                                                            height: 10.0,
                                                            child:
                                                                SpinKitDoubleBounce(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 10.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ProjetosRow>
                                                          listViewProjetosRowList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          24.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewProjetosRowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 5.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewProjetosRow =
                                                              listViewProjetosRowList[
                                                                  listViewIndex];
                                                          return Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .compIndexNetflixModels
                                                                  .getModel(
                                                                listViewProjetosRow
                                                                    .id
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CompIndexNetflixWidget(
                                                                key: Key(
                                                                  'Keycja_${listViewProjetosRow.id.toString()}',
                                                                ),
                                                                ranking:
                                                                    listViewProjetosRow
                                                                        .ranking!,
                                                                foto:
                                                                    listViewProjetosRow
                                                                        .capa!,
                                                                projet:
                                                                    listViewProjetosRow
                                                                        .slug!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 24.0, 24.0, 24.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SelectionArea(
                                                  child:
                                                      AnimatedDefaultTextStyle(
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                duration:
                                                    Duration(milliseconds: 600),
                                                curve: Curves.easeIn,
                                                child: Text(
                                                  'Criado com muito 🧡 por Emerson Vale',
                                                ),
                                              )),
                                              SelectionArea(
                                                  child: Text(
                                                '52.050.025/0001-01',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              )),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 1140.0,
                                height: 133.0,
                                constraints: BoxConstraints(
                                  maxHeight: 133.0,
                                ),
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
