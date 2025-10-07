// import 'package:flutter/material.dart';

// class WidgetOne extends StatefulWidget {
//   const WidgetOne({super.key});

//   @override
//   State<WidgetOne> createState() => _WidgetOne();
// }

// class _WidgetOne extends State<WidgetOne> {
//   String message = 'test camera';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Widget One'),),
//       body: Column(
//         children: [
//           Container(
//             height: 60,
//             color: Colors.blue,

//             width: double.infinity,
//             child: Text(message),
//           ),
//           Expanded(
//             child: NotificationListener(
//               onNotification: (scrollNotification) {
//                 if (scrollNotification is ScrollStartNotification) {
//                   setState(() {
//                     message = 'scroll Started';
//                   });
//                 } else if (scrollNotification is ScrollUpdateNotification) {
//                   setState(() {
//                     message = 'Scroll Updated';
//                   });
//                 } else if (scrollNotification is ScrollEndNotification) {
//                   setState(() {
//                     message = 'Scroll Ended';
//                   });
//                 }
//                 return true;
//               },
//               child: ListView.builder(
//                 itemCount: 50,
//                 itemBuilder: (context, index) {
//                   return ListTile(title: Text('Item : $index'));
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class WidgetTwo extends StatefulWidget {
//   const WidgetTwo({super.key});

//   @override
//   State<WidgetTwo> createState() => _WidgetTwoState();
// }

// class _WidgetTwoState extends State<WidgetTwo> {
//   double targetValue = 100;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TweenAnimationBuilder(
//           tween: Tween<double>(begin: 0, end: targetValue),
//           duration: Duration(seconds: 5),
//           builder: (context , size ,_) {

//             return IconButton(
//               iconSize: size,
//               color: Colors.orangeAccent,
//               onPressed: () {
//                 setState(() {
//                   targetValue = targetValue == 100 ? 250 : 100;
//                 });
//               },
//               icon: Icon(Icons.flutter_dash),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

// class WidgetThree extends StatelessWidget {
//   const WidgetThree({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Shimmer Example")),
//       body: Center(
//         child: Shimmer.fromColors(
//           baseColor: Colors.grey[300]!,
//           highlightColor: Colors.grey[100]!,
//           child: Container(
//             width: 200,
//             height: 100,
//             color: Colors.white, // لون الكونتينر الأساسي (قبل التأثير)
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MiniApp extends StatefulWidget {
//   const MiniApp({super.key});

//   @override
//   State<MiniApp> createState() => _MiniAppState();
// }

// class _MiniAppState extends State<MiniApp> {
//   bool isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ChoiceChip(
//           backgroundColor: Colors.grey,
//           label: Text('choice chip'),
//           selected: isSelected,
//           selectedColor: Colors.green,
//           onSelected: (updated) {
//             setState(() {
//               isSelected = updated;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
