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
          child: SingleChildScrollView( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
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
                      margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
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
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                            fontSize: 22.0, 
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          "Please Enter The Details Below To Continue",
                          textAlign: TextAlign.center, 
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                
                SizedBox(
                  width: 300, 
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Email',
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.symmetric(vertical: 10), 
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your Password',
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      contentPadding: EdgeInsets.symmetric(vertical: 10), 
                    ),
                    obscureText: true, 
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.red, 
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Login', // Changed to 'Login' for clarity
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}