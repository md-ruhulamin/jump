import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(body: HoverButton()),
    );
  }
}

class HoverButton extends StatefulWidget {
  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  Offset _buttonPosition = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _buttonPosition += details.delta;
        });
      },
      child: Stack(
        children: [
          Positioned(
              left: 100,
              top: 100,
              child: Container(
                child: const Image(
                    image: NetworkImage(
                        "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMnFwanV4ZzNiM2ZwZXNscWZybHd1MjYwdno2MHVqcmxlam1xamtwNyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/X3Yj4XXXieKYM/giphy.gif")),
              )),
          Positioned(
            left: _buttonPosition.dx,
            top: _buttonPosition.dy,
            child: MouseRegion(
              onHover: (event) {
                setState(() {
                  double w = MediaQuery.of(context).size.width - 5;

                  double random = Random().nextDouble() + 0.1;
                  double h = MediaQuery.of(context).size.height;
                  int width = Random().nextInt(w.toInt());
                  width = width < 0 ? width = 0 : width;
                  int height = Random().nextInt(h.toInt());
                  height = height < 0 ? height = 0 : height;
                  print("Width $w");
                  print("Height $h");
                  // Change position when hovered
                  _buttonPosition = Offset(width as double, height as double);
                  print(w * random);
                  print(h * random);
                });
              },
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Change position when clicked
                    _buttonPosition = Offset(
                      _buttonPosition.dx,
                      _buttonPosition.dy,
                    );
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellow, Colors.green],
                      ),
                      boxShadow: const [BoxShadow()],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "No, I am Not",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
