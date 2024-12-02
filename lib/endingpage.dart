import 'package:HBD/main.dart';
import 'package:HBD/pagescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EndingPage extends StatelessWidget {
  const EndingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Here’s to a beautiful year ahead, filled with endless possibilities. Enjoy your day!",
                style: TextStyle(
                  fontFamily: 'Playwrite', // Use a custom font here
                  fontSize: 28,
                  fontWeight: FontWeight.bold, // Medium weight
                  color: Colors.deepPurple.shade900, // Customize text color
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.green.withOpacity(0.9),
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FunnyApp2()));
                    },
                    child: Text(
                      'See Again?',
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
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to next page in PageView

                      // Show final message on the last page
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "Ok Then....!!",
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
                            "Wish You Good Luck,Thank You!!",
                            style: TextStyle(
                              fontFamily: 'Playwrite', // Use a custom font here
                              fontSize: 25,
                              fontWeight: FontWeight.bold, // Medium weight
                              color:
                                  Colors.red.shade900, // Customize text color
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
                                  SystemNavigator.pop();
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    fontFamily:
                                        'Playwrite', // Use a custom font here
                                    fontSize: 20,
                                    fontWeight:
                                        FontWeight.w500, // Medium weight
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
                      'No',
                      style: TextStyle(
                        fontFamily: 'Playwrite', // Use a custom font here
                        fontSize: 18,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
