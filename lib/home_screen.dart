import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planet_2/planet_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1E72BA),
              Color(0xff2c1f6e)
            ]
          )
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Image.asset("assets/bg_stars.png", fit: BoxFit.contain,),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset("assets/ic_menu.png", width: 20,),
                        Spacer(),
                        Image.asset("assets/ic_avatar.png", width: 30,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text("Eclipse \n 14 de octubre", style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),),
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: false,
                              aspectRatio: 1.0,
                              enlargeCenterPage: true,
                              viewportFraction: 0.6
                            ),
                            items: [
                              PlanetWidget("Eclipse 1", "assets/eclipse1.png", "Lorem ipsum dolor sit amet consectetur."),
                              PlanetWidget("Eclipse 2" , "assets/eclipse2.png", "Lorem ipsum dolor sit amet consectetur."),
                              PlanetWidget("Eclipse 3", "assets/eclipse3.png", "Lorem ipsum dolor sit amet consectetur."),
                              PlanetWidget("Eclipse 1", "assets/eclipse1.png", "Lorem ipsum dolor sit amet consectetur."),
                              PlanetWidget("Eclipse 2" , "assets/eclipse2.png", "Lorem ipsum dolor sit amet consectetur."),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //   Image.asset("assets/ic_avatar_1.png", width: 30,),
                            //   Image.asset("assets/ic_avatar_2.png", width: 30,),
                            //   Image.asset("assets/ic_avatar_3.png", width: 30,),
                           // Image.asset("assets/ic_avatar_4.png", width: 30,),
                          ],
                        ),
                        Text("nasa space apps 2023", style: TextStyle(
                          fontSize: 10
                        ),),
                        SizedBox(height: 20,)
                      ],
                    ),
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
