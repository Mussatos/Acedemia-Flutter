import 'package:flutter/material.dart';
import 'package:flutter_fitness/nextscreen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitBodyScreen(),
    );
  }
}

class FitBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NextScreen()),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('mulhercorda.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'Logo.png',
                    width: 150,
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'FITBODY.png',
                    width: 200,
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
