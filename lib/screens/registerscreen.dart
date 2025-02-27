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
                margin: EdgeInsets.fromLTRB(0, 0, 0,90),
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
            // SizedBox(height: 20),
            
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  Input(Icons.person,"Username","Username" ),
                  Input(Icons.email, "Email","Email"),
                  Input(Icons.phone, "Phone Number","Phone Number"),
                  Input(Icons.lock, "Password","Password",isPassword: true),
                  Input(Icons.lock, "Confirm Password","Confirm password", isPassword: true),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConferenceScreen()),
                );
              },
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 5),
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
  Widget Input(IconData icon, String hint,String label, {bool isPassword = false}) {
    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0,120, 0),
            child: Text(
              label,
              style:TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                
              ) ,
            ),
          ),
          TextFormField(
            obscureText: isPassword,
            decoration: InputDecoration(
              labelText: hint,
              prefixIcon: Icon(icon, color: Colors.grey),
            
            ),
          ),
        ],
      ),
    );
  }
}
