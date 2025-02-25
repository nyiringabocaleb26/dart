// import 'package:flutter/material.dart';
// import 'screens/login.dart';
// import 'screens/registertoevent.dart';
// import 'screens/listofevents.dart';

// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/', // Set the initial route to the home widget
//       routes: {
//         '/': (context) => HomeScreen(), // Define the home screen
//         '/login': (context) => Login(), // Ensure Login widget is correctly implemented
//         '/register': (context) => MeetingRegisterApp(), // Ensure MeetingRegisterApp is correctly implemented
//         // '/listofvent' :(context) => ListOfEventsApp()
//       },
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
     
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Top Icon
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 40.0),
//               // ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 spacing: 10,
//                 children: [
//                   Container(
//                     width: 25,
//                     height: 70,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.pink),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
//                     width: 25,
//                     height: 70,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.pink),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 80),
//               // Main Image
//               CircleAvatar(
//                 radius: 75,
//                 backgroundImage: AssetImage(
//                   'assets/image2.jpg',
//                 ),
//               ),
//               SizedBox(height: 30),
//               // Title
//               Text(
//                 'TechMe',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               // Subtitle
//               Text(
//                 'Accelerating Tech With Confidence\nAfrican Nation Conference',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 16,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   spacing: 10,
//                   children: [
//                     Container(
//                       width: 25,
//                       height: 105,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.pink),
//                     ),
//                     Container(
//                       width: 20,
//                       height: 85,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: const Color.fromARGB(255, 218, 134, 162)),
//                     ),
//                     Container(
//                       width: 15,
//                       height: 65,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: const Color.fromARGB(255, 218, 134, 162)),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30),
//               // Middle Icon

//               SizedBox(height: 30),

//               // Button
//               TextButton(
//                 onPressed: () {
//                 //  Navigator.pushNamed(context,"/login");
//                  Navigator.pushNamed(context,"/login");
//                 },
//                 style: ElevatedButton.styleFrom(
//                   // primary: Colors.red,

//                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                   backgroundColor: Colors.pinkAccent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/registertoevent.dart';
import 'screens/listofevents.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route to the home widget
      routes: {
        '/': (context) => HomeScreen(), // Define the home screen
        '/login': (context) => Login(), // Ensure Login widget is correctly implemented
        '/register': (context) => MeetingRegisterApp(), // Ensure MeetingRegisterApp is correctly implemented
        // '/listofvent' :(context) => ListOfEventsApp()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 60, 0, 0),
                  width: 25,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40), 
            CircleAvatar(
              radius: 50, 
              backgroundImage: AssetImage(
                'assets/image2.jpg',
              ),
            ),
            SizedBox(height: 20), 
            Text(
              'TechMe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), 
            Text(
              'Accelerating Tech With Confidence\nAfrican Nation Conference',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14, 
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    width: 20,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 218, 134, 162),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    width: 15,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 218, 134, 162),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), 
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}