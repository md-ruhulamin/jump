import 'package:flutter/material.dart';
import 'dart:math';

class BirthdaySurpriseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirthdaySurprise(),
    );
  }
}

class BirthdaySurprise extends StatefulWidget {
  @override
  _BirthdaySurpriseState createState() => _BirthdaySurpriseState();
}

class _BirthdaySurpriseState extends State<BirthdaySurprise> {
  // Variables for button position
  double buttonX = 0.0;
  double buttonY = 0.0;
  double maxX = 0;
  double maxY = 0;

  // Method to move the "No" button randomly
  void _moveButton() {
    final random = Random();
    setState(() {
      // Random position for the button within screen boundaries
      buttonX = random.nextDouble() * maxX - 50;  // Account for button width
      buttonY = random.nextDouble() * maxY - 50;  // Account for button height
    });
  }

  // Show birthday surprise when "Yes" is clicked
  void _showSurprise() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Surprise! 🎉'),
          content: Text(
            'Happy Birthday! Wishing you a day full of love, laughter, and joy! 🎂🎁',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Thank You!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get the maximum X and Y coordinates from the screen size
        maxX = constraints.maxWidth;
        maxY = constraints.maxHeight;

        return Scaffold(
          body: Stack(
            children: [
              // Background
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pinkAccent, Colors.purpleAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              // Prompt text
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Do you want to see your birthday surprise?',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    // "Yes" button
                    ElevatedButton(
                      onPressed: _showSurprise,
                      child: Text('Yes'),
                    ),
                    SizedBox(height: 20),
                    // "No" button, its position changes randomly
                    AnimatedPositioned(
                      left: buttonX,
                      top: buttonY,
                      duration: Duration(milliseconds: 300),
                      child: ElevatedButton(
                        onPressed: _moveButton,  // Button dodges when pressed
                        child: Text('No'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
