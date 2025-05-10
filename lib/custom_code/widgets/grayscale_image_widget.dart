// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class GrayscaleImageWidget extends StatelessWidget {
  const GrayscaleImageWidget({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
  });

  final double? width;
  final double? height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: ColorFiltered(
        colorFilter: const ColorFilter.matrix(<double>[
          0.2126, 0.7152, 0.0722, 0, 0, // Red channel (luminância)
          0.2126, 0.7152, 0.0722, 0, 0, // Green channel
          0.2126, 0.7152, 0.0722, 0, 0, // Blue channel
          0, 0, 0, 1, 0, // Alpha channel (preservando transparência)
        ]),
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain, // Ajusta a imagem corretamente
          filterQuality: FilterQuality.high, // Melhora a qualidade da imagem
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Icon(Icons.broken_image, color: Colors.red),
            );
          },
        ),
      ),
    );
  }
}
