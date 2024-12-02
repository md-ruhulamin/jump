import 'package:HBD/endingpage.dart';
import 'package:flutter/material.dart';


class PageViewScreen extends StatelessWidget {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  final List<Map<String, String>> pageData = [
    {"image": "assets/image/pic1.jpg", "text": "Page 1"},
    {"image": "assets/image/pic2.jpg", "text": "Page 2"},
    {"image": "assets/image/pic3.jpg", "text": "Page 3"},
    {"image": "assets/image/cat.jpeg", "text": "Page 1"},
    {"image": "assets/image/cat.jpeg", "text": "Page 2"},
    {"image": "assets/image/cat.jpeg", "text": "Page 3"},
  ];
  List<String> praiseTexts = [
    "Your smile makes the world a brighter place!",
    "You radiate beauty, inside and out.",
    "Your presence brings warmth and happiness.",
    "You are the perfect blend of grace and charm.",
    "Your energy lights up every room you enter.",
    "You are truly one of a kind—so effortlessly beautiful.",
    "Your elegance and kindness shine through in everything you do.",
    "You make even the simplest moments feel special.",
    "Your joy is infectious, and your beauty is undeniable.",
    "You are a living example of beauty with a purpose.",
    "Your heart is as beautiful as your smile.",
    "You have a unique sparkle that no one else has.",
    "You’re a masterpiece, radiating light and love.",
    "Your beauty comes from the kindness in your soul.",
    "You make the world more beautiful just by being in it.",
    "Your inner light shines through in everything you do.",
    "You’re not just beautiful—you’re inspiring.",
    "Your confidence and grace are a joy to witness.",
    "You bring out the best in everyone around you.",
    "Your beauty is timeless, and your heart is golden.",
    "You’re a true vision of strength and elegance.",
    "Your presence makes everything feel brighter and better."
  ];
  List<String> birthdayQuotes = [
    "Wishing you a day filled with love, laughter, and joy. Happy Birthday!",
    "May your birthday be as special as you are. Have a wonderful year ahead!",
    "Sending you smiles for every moment of your special day. Have a fantastic birthday!",
    "Happy Birthday! May all your wishes come true today and always.",
    "Cheers to another year of amazing adventures. Happy Birthday!",
    "May this day bring you endless joy and countless blessings. Happy Birthday!",
    "On your special day, I wish you nothing but the best. Enjoy every moment!",
    "You deserve all the love and happiness in the world. Happy Birthday!",
    "Birthdays are the universe’s way of celebrating you! Have an awesome day!",
    "Wishing you a beautiful day with good health and happiness forever. Happy Birthday!",
    "May your birthday be filled with sunshine, laughter, and love. Have a great year!",
    "Another year older, another year wiser. Wishing you a fabulous birthday!",
    "You are a gift to the world, and your birthday is the perfect day to celebrate you!",
    "May your special day bring you endless moments of happiness. Happy Birthday!",
    "Today is all about you—enjoy every second of it! Wishing you a fantastic birthday!",
    "On your birthday, may your heart be filled with joy and your dreams come true.",
    "Happy Birthday! Here's to a bright, healthy, and exciting future!",
    "To the kindest person I know, happy birthday! May your day be as special as you are.",
    "Celebrate, laugh, and enjoy the wonderful day ahead! Happy Birthday!",
    "Wishing you a magical birthday filled with wonderful surprises and unforgettable moments.",
    "The world is so lucky to have you in it — here’s to a wonderful year ahead!",
    "Another year of greatness awaits you. Happy Birthday, and may your journey ahead be wonderful!",
    "Happy Birthday! I hope you create memories that will last a lifetime!",
  ];

  @override
  Widget build(BuildContext context) {
    print(birthdayQuotes.length);
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          child: PageView.builder(
            controller: _pageController,
            itemCount: birthdayQuotes.length,
            itemBuilder: (context, index) {
              return index != 22
                  ? Center(
                      child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              Container(
                                width: 320,
                                height: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/image/Telegram/pic${index + 1}.jpg"), // Background image
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality
                                          .high // Makes the image cover the entire container
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      praiseTexts[index],
                                      style: TextStyle(
                                        fontFamily:
                                            'Playwrite', // Use a custom font here
                                        fontSize: 26,
                                        fontWeight:
                                            FontWeight.w500, // Medium weight
                                        color: Colors
                                            .pinkAccent, // Customize text color
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      birthdayQuotes[index],
                                      style: TextStyle(
                                        fontFamily:
                                            'Playwrite', // Use a custom font here
                                        fontSize: 24,
                                        fontWeight:
                                            FontWeight.w500, // Medium weight
                                        color: Colors
                                            .purple, // Customize text color
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color:
                                                Colors.green.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )))
                  : EndingPage();
            },
          ),
        ),
      ),
    );
  }
}
