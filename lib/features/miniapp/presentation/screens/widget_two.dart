import 'package:flutter/material.dart';

class WidgetTwo extends StatefulWidget {
  const WidgetTwo({super.key});

  @override
  State<WidgetTwo> createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwo> {
  double targetValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget two'),),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(milliseconds: 1000),
          builder: (context , size ,_) {

            return IconButton(
              iconSize: size,
              color: Colors.orangeAccent,
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 100 ? 250 : 100;
                });
              },
              icon: Icon(Icons.flutter_dash),
            );
          },
        ),
      ),
    );
  }
}