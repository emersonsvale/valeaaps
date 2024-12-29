import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'comp_ferramenta_model.dart';
export 'comp_ferramenta_model.dart';

class CompFerramentaWidget extends StatefulWidget {
  const CompFerramentaWidget({
    super.key,
    this.imagem,
    this.nome,
    this.descricao,
    required this.call,
  });

  final String? imagem;
  final String? nome;
  final String? descricao;
  final Future Function(String nome, String descricao)? call;

  @override
  State<CompFerramentaWidget> createState() => _CompFerramentaWidgetState();
}

class _CompFerramentaWidgetState extends State<CompFerramentaWidget> {
  late CompFerramentaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompFerramentaModel());

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
        _model.nome = widget.nome;
        safeSetState(() {});
        await widget.call?.call(
          widget.nome!,
          widget.descricao!,
        );
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              color: valueOrDefault<Color>(
                (_model.mouseRegionHovered == true) &&
                        (widget.nome == _model.nome)
                    ? const Color(0xFF948484)
                    : const Color(0xFF564E4E),
                const Color(0xFF948484),
              ),
              offset: const Offset(
                2.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              (_model.mouseRegionHovered == true) &&
                      (widget.nome == _model.nome)
                  ? const Color(0xFF948484)
                  : const Color(0xFF564E4E),
              const Color(0xFF948484),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              widget.imagem!,
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
