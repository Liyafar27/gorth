import 'package:flutter/material.dart';

class ZoomableImage extends StatelessWidget {
  final ImageProvider imageProvider;

  const ZoomableImage({
    Key? key,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => _showZoomDialog(context),
      child: Container(
        height: screenWidth / 4,
        width: screenWidth / 4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 20,
              offset: Offset(8, -5),
            ),
          ],
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white, width: 4),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  void _showZoomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: InteractiveViewer(
            child: Image(
              image: imageProvider,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
