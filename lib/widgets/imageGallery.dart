import 'dart:math';

import 'package:flutter/material.dart';

class ImageGalleryWidget extends StatefulWidget {
  const ImageGalleryWidget({Key? key}) : super(key: key);

  @override
  _ImageGalleryWidgetState createState() => _ImageGalleryWidgetState();
}

class _ImageGalleryWidgetState extends State<ImageGalleryWidget> {
  double _baseScaleFactor = 0.5;
  double _scaleFactor = 0.5;
  bool createCircular = false;
  Color _defaultBg = Colors.green;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /* Double Tap Action */
      onDoubleTap: () {
        setState(() {
          // _defaultBg = Colors.red;
          _defaultBg =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      /* change rect into circular */
      onLongPress: () {
        setState(() {
          createCircular = !createCircular;
        });
      },

      /* Zoom in and Zoom Out*/
      onScaleStart: (details) {
        _baseScaleFactor = _scaleFactor;
      },
      onScaleUpdate: (details) {
        // details - screen sclingup values
        setState(() {
          // scaling up and down
          _scaleFactor = _baseScaleFactor * details.scale;
        });
      },
      onScaleEnd: (details) {
        // returning back to the original state
        _scaleFactor = _baseScaleFactor;
      },
      /* Creating a card design */
      child: Card(
        // shape: RoundedRectangleBorder(),
        shape: createCircular
            ? const CircleBorder()
            : const RoundedRectangleBorder(),
        color: _defaultBg,
        child: const SizedBox(
          height: 360.0,
          width: 360.0,
        ),
      ),
    );
  }
}

// ScaleFactor ==> Device - default - variable scale