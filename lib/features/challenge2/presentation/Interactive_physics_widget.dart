import 'package:flutter/material.dart';
import 'package:flutter_widget_exploration/features/challenge2/widgets/color_box.dart';
import 'package:flutter_widget_exploration/features/challenge2/widgets/draggable_widget.dart';

class InteractivePhysicsWidget extends StatelessWidget {
  const InteractivePhysicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Physics Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DraggableWidget(
                  circleAvatarColor: Colors.red,
                  colorName: 'red',
                ),
                SizedBox(width: 16),
                DraggableWidget(
                  circleAvatarColor: Colors.blue,
                  colorName: 'blue',
                ),
                SizedBox(width: 16),
                DraggableWidget(
                  circleAvatarColor: Colors.green,
                  colorName: 'green',
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorBox(color: Colors.red, acceptedColor: 'red'),
                SizedBox(width: 40),
                ColorBox(color: Colors.blue, acceptedColor: 'blue'),
                SizedBox(width: 40),
                ColorBox(color: Colors.green, acceptedColor: 'green'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




