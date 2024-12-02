// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:HBD/pagescreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(FunnyApp2());
}

class FunnyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FunnyAppScreen(),
    );
  }
}

class FunnyAppScreen extends StatefulWidget {
  @override
  _FunnyAppScreenState createState() => _FunnyAppScreenState();
}

class _FunnyAppScreenState extends State<FunnyAppScreen> {
  double noButtonX = 20.0;
  double noButtonY = 500.0;
  final Random random = Random();

  void moveNoButton() {
    setState(() {
      noButtonX =
          random.nextDouble() * (MediaQuery.of(context).size.width - 100);
      noButtonY =
          random.nextDouble() * (MediaQuery.of(context).size.height - 200);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "On this special day, I raise a toast to you and your life.\nHappy birthday😍 . \nSee some magic??",
                    style: TextStyle(
                      fontFamily: 'Playwrite', // Use a custom font here
                      fontSize: 35,
                      fontWeight: FontWeight.w500, // Medium weight
                      color: Colors.white, // Customize text color
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.green.withOpacity(0.5),
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to next page in PageView

                    // Show final message on the last page
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          "Yeah ....!!",
                          style: TextStyle(
                            fontFamily: 'Playwrite', // Use a custom font here
                            fontSize: 28,
                            fontWeight: FontWeight.bold, // Medium weight
                            color: Colors
                                .deepPurple.shade900, // Customize text color
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.green.withOpacity(0.9),
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "Let's explore some beautiful things.Do you want to explore with me?  ",
                          style: TextStyle(
                            fontFamily: 'Playwrite', // Use a custom font here
                            fontSize: 25,
                            fontWeight: FontWeight.bold, // Medium weight
                            color: Colors.red.shade900, // Customize text color
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.green.withOpacity(0.9),
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PageViewScreen()));
                              },
                              child: Text(
                                'Lets Go',
                                style: TextStyle(
                                  fontFamily:
                                      'Playwrite', // Use a custom font here
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, // Medium weight
                                  color: Colors.white, // Customize text color
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10.0,
                                      color: Colors.green.withOpacity(0.5),
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      fontFamily: 'Playwrite', // Use a custom font here
                      fontSize: 20,
                      fontWeight: FontWeight.w500, // Medium weight
                      color: Colors.pink, // Customize text color
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.green.withOpacity(0.5),
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: noButtonX,
            top: noButtonY,
            child: GestureDetector(
              onTap: moveNoButton,
              child: ElevatedButton(
                onPressed: null, // Button is not clickable
                child: Text(
                  'No',
                  style: TextStyle(
                    fontFamily: 'Playwrite', // Use a custom font here
                    fontSize: 15,
                    fontWeight: FontWeight.w500, // Medium weight
                    color: Colors.white, // Customize text color
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.green.withOpacity(0.5),
                        offset: Offset(2, 2),
                      ),
                    ],
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
      home: Scaffold(body: MovableButtonScreen()),
    );
  }
}

class FunnyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FunnyAppScreen(),
    );
  }
}

class FunnyAppScreen4 extends StatefulWidget {
  @override
  _FunnyAppScreenState createState() => _FunnyAppScreenState();
}

class _FunnyAppScreen4State extends State<FunnyAppScreen> {
  double noButtonX = 0.0;
  double noButtonY = 0.0;
  final Random random = Random();

  void moveNoButton() {
    setState(() {
      noButtonX =
          random.nextDouble() * (MediaQuery.of(context).size.width - 100);
      noButtonY =
          random.nextDouble() * (MediaQuery.of(context).size.height - 200);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Do you like me?'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you like me?',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Yes button clicked
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Yay!'),
                        content: Text('I knew it! 😄'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          ),
          Positioned(
            left: noButtonX,
            top: noButtonY,
            child: GestureDetector(
              onTap: moveNoButton,
              child: ElevatedButton(
                onPressed: null, // Button is not clickable
                child: Text('No'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovableButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovableButtonScreen(),
    );
  }
}

class MovableButtonScreen extends StatefulWidget {
  @override
  _MovableButtonScreenState createState() => _MovableButtonScreenState();
}

class _MovableButtonScreenState extends State<MovableButtonScreen> {
  double xPos = 100.0;
  double yPos = 100.0;

  Offset _startPos = Offset.zero;
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movable Button'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: xPos,
            top: yPos,
            child: GestureDetector(
              onPanStart: (details) {
                _startPos = details.globalPosition;
              },
              onPanUpdate: (details) {
                setState(() {
                  _isDragging = true;
                  xPos += details.delta.dx;
                  yPos += details.delta.dy;
                });
              },
              onPanEnd: (details) {
                setState(() {
                  _isDragging = false;
                });
              },
              onTap: () {
                if (!_isDragging) {
                  print('Button clicked!');
                }
              },
              child: Container(
                width: 100,
                height: 100,
                child: FloatingActionButton(
                  onPressed: null, // onTap logic is handled in GestureDetector
                  child: Icon(Icons.favorite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class MovableButtonScreen extends StatefulWidget {
//   @override
//   _MovableButtonScreenState createState() => _MovableButtonScreenState();
// }

// class _MovableButtonScreenState extends State<MovableButtonScreen> {
//   double xPos = 100.0;
//   double yPos = 100.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Movable Button'),
//       ),
//       body: Stack(
//         children: [
//           Positioned(
//             left: xPos,
//             top: yPos,
//             child: GestureDetector(
//               onPanUpdate: (details) {
//                 setState(() {
//                   xPos += details.delta.dx;
//                   yPos += details.delta.dy;
//                 });
//               },
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 child: FloatingActionButton(
//                   onPressed: () {
//                     print('Button pressed!');
//                   },
//                   child: Icon(Icons.favorite),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class MovableButton extends StatefulWidget {
//   const MovableButton({Key? key}) : super(key: key);

//   @override
//   _MovableButtonState createState() => _MovableButtonState();
// }

// class _MovableButtonState extends State<MovableButton> {
//   double _left = 100.0;
//   double _top = 100.0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 600,
//       width: 400,
//       child: Stack(
//         children:[ Positioned(
//           left: _left,
//           top: _top,
//           child: GestureDetector(
//             onPanUpdate: (details) {
//               setState(() {
//                 _left += details.delta.dx;
//                 _top += details.delta.dy;
//               });
//             },
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.blue,
//             ),
//           ),
//         )],
//       )
//     );
//   }
// }
// class HoverButton extends StatefulWidget {
//   @override
//   _HoverButtonState createState() => _HoverButtonState();
// }

// class _HoverButtonState extends State<HoverButton> {
//   Offset _buttonPosition = const Offset(1291, 455);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanUpdate: (details) {
//         setState(() {
//           _buttonPosition += details.delta;
//         });
//       },
//       child: Stack(
//         children: [
//           Positioned(
//               left: 600,
//               top: 200,
//               child: Container(
//                 child: Text("Sothething",style: TextStyle(fontSize: 40),),
//               )),
//                 Positioned(
//               left: 200,
//               bottom: 200,
//               child: Container(
//                   padding: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [Colors.yellow, Colors.green],
//                       ),
//                       boxShadow: const [BoxShadow()],
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Center(
//                     child: Text(
//                       "Yes, I am",
//                       style: TextStyle(color: Colors.white, fontSize: 25),
//                     ),
//                   ),
//                 ),),
//           Positioned(
//             left: _buttonPosition.dx,
//             top: _buttonPosition.dy,
//             child: MouseRegion(
//               onHover: (event) {
//                 setState(() {
//                   double w = MediaQuery.of(context).size.width - 5;

//                   double random = Random().nextDouble() + 0.1;
//                   double h = MediaQuery.of(context).size.height;
//                   int width = Random().nextInt(w.toInt()-20);
//                   width = width < 0 ? width = 0 : width;
//                   int height = Random().nextInt(h.toInt()-20);
//                   height = height < 0 ? height = 0 : height;
//                   print("Width $w");
//                   print("Height $h");
//                   // Change position when hovered
//                   _buttonPosition = Offset(width as double, height as double);
//                   print(w * random);
//                   print(h * random);
//                 });
//               },
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     // Change position when clicked
//                     _buttonPosition = Offset(
//                       _buttonPosition.dx,
//                       _buttonPosition.dy,
//                     );
//                   });
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [Colors.yellow, Colors.green],
//                       ),
//                       boxShadow: const [BoxShadow()],
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Center(
//                     child: Text(
//                       "No, I am Not",
//                       style: TextStyle(color: Colors.white, fontSize: 25),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
