import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planet_2/planet_widget.dart';

class HomeScreenSplash extends StatefulWidget {
  String planetName;
  String description;
  String imagen;

  String description2;
  String video1;
  String video2;
  String video3;
  String video4;
  String video5;

  HomeScreenSplash({
    Key? key,
    required this.planetName,
    required this.description,
    required this.imagen,
  required  this.description2,required this.video1, required this.video2, required this.video3,required this.video4,required this.video5
 
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
                          "",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PlanetWidget(
                            widget.planetName,
                                  
widget.imagen,
                            widget.description,
                            widget.description2,
                           widget.video1,
                            widget.video2,
                            widget.video3,
                            widget.video4,
                            widget.video5),
                        Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset(
                          widget.video1,
                          width: 20,
                        ),
                        Spacer(),
                        Image.asset(
                                widget.video2,
                       
                          width: 30,
                        ),
                      ],
                    ),
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
