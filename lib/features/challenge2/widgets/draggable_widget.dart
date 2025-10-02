import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({super.key, required this.circleAvatarColor, required this.colorName});
  final Color circleAvatarColor;
  final String colorName;
  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: colorName,
      feedback: CircleAvatar(radius: 30, backgroundColor:circleAvatarColor),
      child: CircleAvatar(radius: 30, backgroundColor:circleAvatarColor),
    );
  }
}
