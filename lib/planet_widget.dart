import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:flutter_planet_2/home_screen_splash.dart';

class PlanetWidget extends StatefulWidget {
  String planetName;
  String image;
  String description;
  String description2;
  String video1;
  String video2;
  String video3;
  String video4;
  String video5;

  PlanetWidget(this.planetName, this.image, this.description,this.description2,this.video1,this.video2,this.video3,this.video4,this.video5);

  @override
  State<PlanetWidget> createState() => _PlanetWidgetState();
}

class _PlanetWidgetState extends State<PlanetWidget> with TickerProviderStateMixin {
  late FlutterGifController controller1;

 @override
  void initState() {
 
    controller1 = FlutterGifController(vsync: this);
   super.initState();
  
    }

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80, bottom: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: size.height ,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:
                  
                  SingleChildScrollView(
              child:
                  
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        widget.planetName,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.start,
                      )
                    ],
                  )),
                ),
              ),
            ),
          ),
          Align(
            
            alignment: Alignment.topCenter,
            
            child:  Padding(
                padding: const EdgeInsets.only(top: 1),
                child:
         Container(
          
              height: size.height*0.3,
         width: size.width *0.4,
          child:  
         
           Image.asset(
              scale: 0.1,
     
          widget.image,
                 fit: BoxFit.contain,
          
    ),)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Container(
                width: 50,
                height: 50,
                child: Card(
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    width: 40,
                    height: 40,
                    child: GestureDetector(
                      
                      onTap: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreenSplash(planetName:  widget.planetName, description:  widget.description,imagen:  widget.image,description2:  widget.description2, video1: widget.video1,video2: widget.video2,video3: widget.video3,video4: widget.video4,video5: widget.video5
                        )),
                  );

                      },
                      
                      child: Icon(
                      
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),)
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
