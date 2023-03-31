import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Birthday Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://www.google.com/imgres?imgurl=https%3A%2F%2Fthumbs.dreamstime.com%2Fb%2Fhappy-birthday-cupcake-celebration-message-160558421.jpg&tbnid=i1Jdd_RcGVs6IM&vet=12ahUKEwjZp9KP-Ib-AhWF-6QKHVWVAkQQMygJegUIARCGAg..i&imgrefurl=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fhappy-birthday.html&docid=RrzE9GT-VHazwM&w=800&h=533&q=happy%20birthday&ved=2ahUKEwjZp9KP-Ib-AhWF-6QKHVWVAkQQMygJegUIARCGAg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Happy Birthday',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
