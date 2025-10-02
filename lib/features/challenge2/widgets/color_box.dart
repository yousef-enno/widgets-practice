import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget {
  const ColorBox({super.key, required this.color, required this.acceptedColor});
  final Color color;
  final String acceptedColor;
  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  bool isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      builder: (context, _, _) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(height: 80, width: 80, color: widget.color),
            if (isCorrect) 
              Icon(Icons.check, color: Colors.white.withValues(alpha: 0.8), size: 40  ),
          ],
        );
      },
      onAcceptWithDetails: (details) {
        if (details.data == widget.acceptedColor) {
          setState(() {
            isCorrect = true;
          });
        }
      },
    );
  }
}
