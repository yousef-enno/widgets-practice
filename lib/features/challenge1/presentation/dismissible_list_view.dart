import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DismissibleListView extends StatefulWidget {
  const DismissibleListView({super.key});

  @override
  State<DismissibleListView> createState() => _DismissibleListViewState();
}

class _DismissibleListViewState extends State<DismissibleListView> {
  List<String> tasks = [
    'study flutter widgets ',
    'go to the gym',
    'read a programming book',
    'finish Flutter task',
  ];
  List<bool> completed = [];

  @override
  void initState() {
    super.initState();
    completed = List.generate(tasks.length, (_) => false);
  }

  String? deletedTask;
  int? deletedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible List View')),
      body: ReorderableListView.builder(
        buildDefaultDragHandles: false,
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final item = tasks[index];

          return Dismissible(
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            key: Key(item),
            child: ListTile(
              leading: ReorderableDragStartListener(
                index: index,
                child: Icon(Icons.drag_indicator),
              ),
              title: Text(
                item,
                style: TextStyle(
                  decoration:
                      completed[index]
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    completed[index] = !completed[index];
                  });
                },
                child: Icon(
                  completed[index]
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
              ),
            ),
            confirmDismiss: (direction) async {
              return await showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Text('Delete Task'),
                      content: Text('Are you sure you want to delete $item?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text('Delete'),
                        ),
                      ],
                    ),
              );
            },
            onDismissed: (direction) {
              setState(() {
                deletedTask = item;
                deletedIndex = index;
                tasks.removeAt(index);
                completed.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      if (deletedTask != null && deletedIndex != null) {
                        setState(() {
                          tasks.insert(deletedIndex!, deletedTask!);
                          completed.insert(deletedIndex!, false);
                        });
                      }
                    },
                  ),
                  content: Text('$item deleted'),
                ),
              );
            },
          );
        },
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex -= 1;
            final item = tasks.removeAt(oldIndex);
            tasks.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
