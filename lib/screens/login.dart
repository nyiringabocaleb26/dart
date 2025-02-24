import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top Icon
              // Padding(
              //   padding: const EdgeInsets.only(top: 40.0),
              // ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                    Container(
                        width: 25,
                        height: 70,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0,60,0,0),  
                        width: 25,
                        height: 70,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink
                        ),
                    ),
                    ],
                    
                ),
              SizedBox(height: 80),
              // Main Image
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                  'assets/image2.jpg',
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}