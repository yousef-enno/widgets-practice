import 'package:flutter/material.dart';

class WidgetThree extends StatefulWidget {
  const WidgetThree({super.key});

  @override
  State<WidgetThree> createState() => _WidgetThreeState();
}

class _WidgetThreeState extends State<WidgetThree> {
    bool isSelected = false;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text('widget three')),
      body: Center(
        child: ChoiceChip(
          backgroundColor: Colors.grey,
          label: Text('choice chip'),
          selected: isSelected,
          selectedColor: Colors.green,
          onSelected: (updated) {
            setState(() {
              isSelected = updated;
            });
          },
        ),
      ),
    );
  }
}
