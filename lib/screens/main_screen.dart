import 'package:flutter/material.dart';
import 'package:space_app/screens/asteroids_of_the_week_screen.dart';
import 'package:space_app/screens/photo_of_the_day_screen.dart';
import 'package:space_app/widgets/main_screen_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Nasa type shit",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const PhotoOfTheDayScreen()),
                    );
                  },
                  child: const MainScreenCard(
                    title: "Photo of the day",
                    imageUrl:
                        "https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const AsteroidsOfTheWeekScreen()),
                    );
                  },
                  child: const MainScreenCard(
                    title: "Today NEOs",
                    imageUrl:
                        "https://images.pexels.com/photos/631477/pexels-photo-631477.jpeg",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
