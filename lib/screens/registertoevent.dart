import 'package:flutter/material.dart';

void main() {
  runApp(MeetingRegisterApp());
}

class MeetingRegisterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingRegisterScreen(),
    );
  }
}

class MeetingRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://storage.googleapis.com/a1aa/image/JNYlq5VdsSZXKehL5pxC2os3HFr2dt-CQGZmDFC2Mag.jpg',
                height: 50,
                width: 50,
              ),
              SizedBox(height: 20),
              Text(
                'Meeting Register',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Cybersecurity',
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              _buildTextField(
                context,
                hintText: 'Name',
                icon: Icons.person,
              ),
              SizedBox(height: 10),
              _buildTextField(
                context,
                hintText: 'Email',
                icon: Icons.email,
              ),
              SizedBox(height: 10),
              _buildTextField(
                context,
                hintText: 'Location',
                icon: Icons.location_on,
              ),
              SizedBox(height: 10),
              _buildTextField(
                context,
                hintText: 'Phone Number',
                icon: Icons.phone,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(

                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Register',
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
    );
  }

  Widget _buildTextField(BuildContext context, {required String hintText, required IconData icon}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(icon, color: Colors.grey),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
