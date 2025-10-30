import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("HELLO")),
//         body: Center(
//           child: Column(
//             children: [
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.amber,
//                 child: const Center(
//                   child: Text(
//                     'HI',
//                     style: TextStyle(
//                       fontSize: 50,
//                       color: Color.fromARGB(255, 52, 7, 255),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        // color: const Color(0xFF2196F3),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            const Color.fromARGB(255, 180, 231, 255),
            const Color.fromARGB(255, 2, 83, 149),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: Text(
          "Hello",
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
          GradientButton(),
          GradientButton(),
          GradientButton(),
          GradientButton(),
          GradientButton()
        ],
      ),
    ),
  );
}

// void main() {
//   // runApp(const MyApp());
//   runApp(
//     MaterialApp(
//       title: 'My app',
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(123, 0, 78, 0),
//           title: Text('Hello poy poy'),
//         ),
//         body: const Center(
//           child: Text('ehehehe'),
//         ),
//       )
//     ),
//   );
// }

// void main() {
//   runApp(MaterialApp(
//     home: Container(
//       color: Colors.lightBlue,
//       padding: EdgeInsets.all(40),
//       margin: EdgeInsets.all(50),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(Radius.circular(10))
//         ),
//         child: Center(
//           child: Text("CADT STUDENTS", style: TextStyle(color: Colors.white, decoration: TextDecoration.none))),
//         ),
//       ),
//     )
//   );
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
