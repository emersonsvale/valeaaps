import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'image_model.dart';
export 'image_model.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    this.linkImage,
  });

  final String? linkImage;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget>
    with TickerProviderStateMixin {
  late ImageModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageModel());

    animationsMap.addAll({
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.1, 1.1),
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 300.0,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.linkImage!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ).animateOnActionTrigger(
            animationsMap['imageOnActionTriggerAnimation']!,
          ),
          onEnter: ((event) async {
            safeSetState(() => _model.mouseRegion5654Hovered = true);
            if (animationsMap['imageOnActionTriggerAnimation'] != null) {
              await animationsMap['imageOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0);
            }
          }),
          onExit: ((event) async {
            safeSetState(() => _model.mouseRegion5654Hovered = false);
            if (animationsMap['imageOnActionTriggerAnimation'] != null) {
              animationsMap['imageOnActionTriggerAnimation']!
                  .controller
                  .reset();
            }
          }),
        ),
      ),
    );
  }
}
