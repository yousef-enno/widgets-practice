import 'package:flutter/material.dart';

class WidgetOne extends StatefulWidget {
  const WidgetOne({super.key});


  @override
  State<WidgetOne> createState() => _WidgetOneState();
}

class _WidgetOneState extends State<WidgetOne> {
    String message = 'test camera';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget One'),),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.blue,

            width: double.infinity,
            child: Text(message),
          ),
          Expanded(
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  setState(() {
                    message = 'scroll Started';
                  });
                } else if (scrollNotification is ScrollUpdateNotification) {
                  setState(() {
                    message = 'Scroll Updated';
                  });
                } else if (scrollNotification is ScrollEndNotification) {
                  setState(() {
                    message = 'Scroll Ended';
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(title: Text('Item : $index'));
                },
              ),
            ),
          ),
        ],
      ),
    );
  
  }
}