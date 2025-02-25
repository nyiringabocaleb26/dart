import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConferenceDetailsScreen(),
    );
  }
}

class ConferenceDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(height: 20),
              Text(
                'Conference Details',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20 ,width: 150),
              Container(
                padding: EdgeInsets.fromLTRB(35, 16, 16, 16),
                width: 500,
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black12)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        '',
                        height: 100,
                        width: 300,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildDetailRow('Title:', 'Cybersecurity'),
                    _buildDetailRow('Place:', 'BK Arena'),
                    _buildDetailRow('Date:', '10/10/2020'),
                    _buildDetailRow('Speaker(s):', 'Kevin'),
                    _buildDetailRow('Entry Fee:', '\$5', isHighlighted: true),
                    _buildScheduleRow(),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        '2-4 PM',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                   ElevatedButton(
  onPressed: () {
    // Handle attend action
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    padding: EdgeInsets.zero, 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
  child: Container(
    width: 400, 
    height: 20, 
    alignment: Alignment.center, 
    child: Text(
      'Attend',
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  ),
),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isHighlighted = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        '$label ${isHighlighted ? value : value}',
        style: TextStyle(
          fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
          color: isHighlighted ? Colors.red : Colors.black,
        ),
      ),
    );
  }

  Widget _buildScheduleRow() {
    return Row(
      children: [
        Text('Schedule:', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            // Handle download action
          },
          child: Text(
            'Download',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
          ),
        ),
        Icon(Icons.download, color: Colors.blue),
      ],
    );
  }
}
