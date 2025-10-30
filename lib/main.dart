import 'dart:math';

import 'package:flutter/material.dart';

//ex1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             "Hello my name is generic guy 1!",
//             style: TextStyle(
//               decoration: TextDecoration.none,
//               color: Colors.amber,
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ex2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Container(
//         padding: EdgeInsets.all(40),
//         margin: EdgeInsets.all(50),
//         color: Colors.blue[300],
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue[600],
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//           ),
//           child: Center(
//             child: Text(
//               "hello",
//               style: TextStyle(
//                 decoration: TextDecoration.none,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// ex3
// void main() {
//   runApp(
//     MaterialApp(
//       home: Container(
//         color: Colors.grey,
//         padding: EdgeInsets.all(40),
//         margin: EdgeInsets.all(50),
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20),
//               decoration: BoxDecoration(
//                 color: Colors.blue[100],
//                 borderRadius: BorderRadius.all(Radius.circular(50)),
//               ),
//               child: Center(
//                 child: Text(
//                   "OOP",
//                   style: TextStyle(
//                     color: Colors.white,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20),
//               decoration: BoxDecoration(
//                 color: Colors.blue[300],
//                 borderRadius: BorderRadius.all(Radius.circular(50)),
//               ),
//               child: Center(
//                 child: Text(
//                   "DART",
//                   style: TextStyle(
//                     color: Colors.white,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20),

//               decoration: BoxDecoration(
//                 // color: const Color(0xFF64B5F6),
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment(0.8, 1),
//                   colors: <Color>[
//                     Color(0xFF64B5F6),
//                     Color(0xFF1E88E5),
//                   ],
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(50)),
//               ),
//               child: Center(
//                 child: Text(
//                   "FLUTTER",
//                   style: TextStyle(
//                     color: Colors.white,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//ex4
// class CustomCard extends StatelessWidget {
//   final String customText;
  // final Color gradientStart;
  // final Color gradientEnd;

//   const CustomCard ({required this.customText, super.key, required this.gradientStart, Color? gradientEnd}) : gradientEnd = gradientEnd ?? gradientStart;

//   @override 
//   Widget build(BuildContext context) {
//     return
//       Container(
//               margin: EdgeInsets.symmetric(vertical: 20),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: <Color> [
//                     gradientStart,
//                     gradientEnd
//                   ]
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(50)),
//               ),
//               child: Center(
//                 child: Text(
//                   customText,
//                   style: TextStyle(
//                     color: Colors.white,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//             );
//   }
// }
// void main() {
//   runApp(
//     MaterialApp(
//       home: Container(
//         color: Colors.grey,
//         padding: EdgeInsets.all(40),
//         margin: EdgeInsets.all(50),
//         child: Column(
//           children: [
//             CustomCard(customText: "OOP", gradientStart: Colors.blue[100]!),
//             CustomCard(customText: "DART", gradientStart: Colors.blue[300]!),
//             CustomCard(customText: "FLUTTER", gradientStart: Colors.blue[300]!, gradientEnd: Colors.blue[600]!,)
//           ],
//         ),
//       ),
//     ),
//   );
// }

//stateless widget
class GradientButton extends StatelessWidget {
  final String customText;
  final Color gradientStart;
  final Color gradientEnd;

  const GradientButton({required this.customText, super.key, required this.gradientStart, Color? gradientEnd}): gradientEnd = gradientEnd ?? gradientStart;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        // color: const Color(0xFF2196F3),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            gradientStart,
            gradientEnd,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: Text(
          customText,
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Column(
        children: [
          GradientButton(customText: "Hello 1", gradientStart: Colors.red, gradientEnd: Colors.green),
          GradientButton(customText: "Hello 2", gradientStart: Colors.green, gradientEnd: Colors.blue),
          GradientButton(customText: "Hello 3", gradientStart: Colors.blue, gradientEnd: Colors.red)
        ],
      ),
    ),
  );
}