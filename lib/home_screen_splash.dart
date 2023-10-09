import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planet_2/planet_widget.dart';

class HomeScreenSplash extends StatefulWidget {
  String planetName;
  String description;
  String image;

  HomeScreenSplash({
    Key? key,
    required this.planetName,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  State<HomeScreenSplash> createState() => _HomeScreenSplashState();
}

class _HomeScreenSplashState extends State<HomeScreenSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff1E72BA), Color(0xff2c1f6e)])),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Image.asset(
                  "assets/bg_stars.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/ic_menu.png",
                          width: 20,
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/ic_avatar.png",
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        const Text(
                          "Eclipse \n 14 de octubre",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PlanetWidget(
                            widget.planetName,
                            widget.image,
                            widget.description,
                            widget.description,
                            "",
                            "",
                            "",
                            "",
                            ""),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //   Image.asset("assets/ic_avatar_1.png", width: 30,),
                            //   Image.asset("assets/ic_avatar_2.png", width: 30,),
                            //   Image.asset("assets/ic_avatar_3.png", width: 30,),
                            // Image.asset("assets/ic_avatar_4.png", width: 30,),
                          ],
                        ),
                        Text(
                          "nasa space apps 2023",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
