import 'package:flutter/material.dart';

class ConferenceScreen extends StatelessWidget {
  // final List<Map<String, String>> conferences = [
  //   {
  //     "title": "Cybersecurity",
  //     "date": "10/10/2020",
  //     "speaker": "Kevin",
  //     "venue": "BK Arena",
  //     "category": "MeetUp"
  //   },
  //   {
  //     "title": "SheCan Hack",
  //     "date": "20/12/2022",
  //     "speaker": "Albert",
  //     "venue": "Kigali Convention Center",
  //     "category": "Community"
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conferences"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Logout", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            // SizedBox(height: 400,width: 600,),
            
              Container(
                color: Colors.grey[200],
                margin: EdgeInsets.fromLTRB(0,20,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 20,
                  
                  children: [
                    Image(
                      image: AssetImage('assets/image2.jpg'),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          'Cybersecurity',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          'Date: 10/10/2020'
                        ),
                        Text(
                          "Speaker: Kevin"
                        ),
                        Text(
                          'Venue:BK Arena'
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        'MeetUp',
                        style: TextStyle(
                          color: Colors.pinkAccent
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //second event

              Container(
                color: Colors.grey[200],
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 20,
                  
                  children: [
                    Image(
                      image: AssetImage('assets/image2.jpg'),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          'SheCanhack',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            // textBaseline: TextAlign.left
                          ),
                        ),
                        Text(
                          'Date: 20/12/2020'
                        ),
                        Text(
                          "Speaker: Albert"
                        ),
                        Text(
                          'Venue:KCC',
                          style: TextStyle(
                      
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        'Community',
                        style: TextStyle(
                          color: Colors.pinkAccent
                        ),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
