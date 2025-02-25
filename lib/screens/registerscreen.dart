import 'package:flutter/material.dart';
import 'package:projact3/screens/listofevents.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Container(
                      width: 25,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                      width: 25,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink),
                    ),
                  ],
                ),
            ),
            SizedBox(height: 20),
            _Input(Icons.person, "Username"),
            _Input(Icons.email, "Email"),
            _Input(Icons.phone, "Phone Number"),
            _Input(Icons.lock, "Password", isPassword: true),
            _Input(Icons.lock, "Confirm Password", isPassword: true,),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConferenceScreen()),
                );
              },
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                      Text("Already have an account?"),
                      Text(
                          "Login", style: TextStyle(color: Colors.pinkAccent)
                      )
                  ],
                ),
              )
              
            ),
          ],
        ),
      ),
    );
  }

  Widget _Input(IconData icon, String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.grey),
        
        ),
      ),
    );
  }
}
