import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Business Card',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF40E0D0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/pic.jpg'),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mariano Castellano',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico', // Added cool font for name
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey[300],
              ),
            ),
            Container(
              width: 150,
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),

            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0.0),
              ),
              width: 350.0,
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.phone, color: Colors.teal, size: 30.0),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '+9 5411 2345 6789',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0.0),
              ),
              width: 350.0,
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mail, color: Colors.teal, size: 30.0),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'mariano@email.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,


                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
