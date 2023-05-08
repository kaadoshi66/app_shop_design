import 'package:itago/screens/home_screen.dart';
import 'package:itago/utils/colors.dart';
import 'package:itago/utils/utils.dart';
import 'package:itago/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          //image transition
          Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: const [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),
          //!TITLE
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              "ITaGO",
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
          ),

          //! information screen
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Appearance \n Shows Your Quality",
                    style: kNormalStyllr.copyWith(
                      fontSize: 30,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Change The Quality Of Your \n Appearance with ITaGO",
                    style: kNormalStyllr.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicators(),
                  ),
                ],
              ),
            ),
          ),
          //Bottom button
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                ),
                child: const Text("Sign Up with Email"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
