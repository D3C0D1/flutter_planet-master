import 'dart:convert';

import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_planet_2/Pagehomes.dart';
import 'package:flutter_planet_2/home_screen_location.dart';

var general = 'assets/images/circulos_genera.png';

class menuPage extends StatefulWidget {
  const menuPage({
    Key? key,
  }) : super(key: key);

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  bool cbuttom1 = true;
  bool cbuttom2 = true;
  bool cbuttom3 = true;

  bool fbuttom1 = false;
  bool fbuttom2 = true;
  bool fbuttom3 = true;
  bool fbuttom4 = true;
  bool aplay = true;

  bool aplayf = true;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  String searchString = "";
  Future<List<Show>?>? shows;
  String hoja = "0";
  bool blockScroll = false;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(top: 0.0, right: 10, left: 0, bottom: 1),
        child: Container(
            padding:
                const EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                //  bottomLeft:, bottom left
                // bottomRight: bottom right
              ),
              image: DecorationImage(
                  image: AssetImage("assets/bg_stars.png"),
                  fit: BoxFit.fitHeight),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, right: 10, left: 10, bottom: 1),
                child: SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 1, left: 30, right: 30, bottom: 1),
                          child: Center(
                              child: Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenLocation()),
                                    );
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 3, left: 0, right: 0, bottom: 3),
                                      height: size.height * 0.05,
                                      width: size.width * 1,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          border: Border.all(
                                              color: Colors
                                                  .amber, // Set border color
                                              width: 3.0), // Set border width
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            //  bottomLeft:, bottom left
                                            // bottomRight: bottom right
                                          ), // Set rounded corner radius
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                color: Colors.black,
                                                offset: Offset(1, 3))
                                          ] // Make rounded corner of border
                                          ),
                                      child: Center(
                                          child: Text(
                                        "CLIMA",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.040,
                                          fontFamily: 'gotic',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )))),
                          
                              
                              Container(
                                height: 10,
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PageHomes(
                                              url:
                                                  "https://antigones.github.io/flutter_game_space_adventure/#/")),
                                    );
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 3, left: 0, right: 0, bottom: 3),
                                      height: size.height * 0.05,
                                      width: size.width * 1,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          border: Border.all(
                                              color: Colors
                                                  .amber, // Set border color
                                              width: 3.0), // Set border width
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            //  bottomLeft:, bottom left
                                            // bottomRight: bottom right
                                          ), // Set rounded corner radius
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                color: Colors.black,
                                                offset: Offset(1, 3))
                                          ] // Make rounded corner of border
                                          ),
                                      child: Center(
                                          child: Text(
                                        "VIDEO JUEGO",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.040,
                                          fontFamily: 'gotic',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )))),
                              Container(
                                height: 10,
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PageHomes(
                                              url:
                                                  "https://www.suncalc.org/#/40.1789,-3.5156,2/2023.10.08/17:13/1/3")),
                                    );
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 3, left: 0, right: 0, bottom: 3),
                                      height: size.height * 0.05,
                                      width: size.width * 1,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          border: Border.all(
                                              color: Colors
                                                  .amber, // Set border color
                                              width: 3.0), // Set border width
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            //  bottomLeft:, bottom left
                                            // bottomRight: bottom right
                                          ), // Set rounded corner radius
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                color: Colors.black,
                                                offset: Offset(1, 3))
                                          ] // Make rounded corner of border
                                          ),
                                      child: Center(
                                          child: Text(
                                        "ECLIPSE API",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.040,
                                          fontFamily: 'gotic',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )))),

                                           Container(
                                height: 10,
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PageHomes(
                                              url:
                                                  "https://worldview.earthdata.nasa.gov/?v=-191.50353781293774,-65.02403613160595,118.37971960120092,73.51200835942075&l=Reference_Labels_15m(hidden),Reference_Features_15m(hidden),Coastlines_15m,BlueMarble_NextGeneration(hidden),VIIRS_NOAA20_CorrectedReflectance_TrueColor(hidden),VIIRS_SNPP_CorrectedReflectance_TrueColor(hidden),MODIS_Aqua_CorrectedReflectance_TrueColor(hidden),MODIS_Terra_CorrectedReflectance_TrueColor&lg=true&s=-73.6912,3.5413&t=2023-09-27-T14%3A00%3A00Z")),
                                    );
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 3, left: 0, right: 0, bottom: 3),
                                      height: size.height * 0.05,
                                      width: size.width * 1,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          border: Border.all(
                                              color: Colors
                                                  .amber, // Set border color
                                              width: 3.0), // Set border width
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            //  bottomLeft:, bottom left
                                            // bottomRight: bottom right
                                          ), // Set rounded corner radius
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                color: Colors.black,
                                                offset: Offset(1, 3))
                                          ] // Make rounded corner of border
                                          ),
                                      child: Center(
                                          child: Text(
                                        "ECLIPSE NASA",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.040,
                                          fontFamily: 'gotic',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )))),
                              Container(
                                height: 10,
                                width: 10,
                              ),
                            
                            ],
                          ))),

//paraque se expanda

                      SingleChildScrollView(
                          padding: const EdgeInsets.only(
                              top: 10, left: 0, right: 0, bottom: 0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => PageHomes(
                                        //           url:
                                        //               "https://www.youtube.com/channel/UCt5y885UFplu2okY39TBwCg")),
                                        // );
                                      },
                                      child: Center(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 1.0,
                                                  right: 8.5,
                                                  left: 8.7,
                                                  bottom: 20),
                                              child: Container(
                                                height: size.height * 0.025,
                                                width: size.width * 0.080,
                                              )))),
                                  GestureDetector(
                                      onTap: () {
                                        //     Navigator.push(
                                        //       context,
                                        //       MaterialPageRoute(
                                        //           builder: (context) => PageHomes(
                                        //               url:
                                        //                   "https://www.instagram.com/senacomunica/?hl=es")),
                                        //     );
                                      },
                                      child: Center(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 1.0,
                                                  right: 8.5,
                                                  left: 8.7,
                                                  bottom: 20),
                                              child: Container(
                                                height: size.height * 0.025,
                                                width: size.width * 0.080,
                                              )))),
                                ],
                              )
                            ],
                          )),
                    ])))));
  }
}

const String _svg_ungc4t =
    '<svg viewBox="8.8 0.0 183.2 193.8" ><path transform="translate(-3135.2, -8372.37)" d="M 3143.952880859375 8508.7109375 C 3146.43212890625 8512.5234375 3148.6171875 8516.2900390625 3151.188720703125 8519.771484375 C 3167.02685546875 8541.2109375 3188.0703125 8554.404296875 3214.5380859375 8557.830078125 C 3243.1025390625 8561.5263671875 3268.23681640625 8553.25 3289.234130859375 8533.458984375 C 3304.939453125 8518.65625 3314.017578125 8500.2109375 3316.24462890625 8478.791015625 C 3319.12158203125 8451.1181640625 3310.764404296875 8426.9267578125 3291.59423828125 8406.7548828125 C 3276.35693359375 8390.720703125 3257.468994140625 8381.578125 3235.459716796875 8379.5263671875 C 3207.068115234375 8376.8798828125 3182.483154296875 8385.81640625 3161.64111328125 8405.150390625 C 3158.6005859375 8407.9716796875 3155.885009765625 8411.142578125 3152.7333984375 8413.9365234375 C 3155.4765625 8410.4443359375 3158.041015625 8406.7919921875 3160.9921875 8403.4853515625 C 3176.4130859375 8386.2060546875 3195.7509765625 8376.232421875 3218.64599609375 8373.2060546875 C 3267.23046875 8366.783203125 3312.9580078125 8398.0625 3324.19091796875 8446.10546875 C 3332.506591796875 8481.671875 3323.40283203125 8512.9111328125 3297.663818359375 8538.822265625 C 3282.732421875 8553.8525390625 3264.279052734375 8562.568359375 3243.234375 8565.27734375 C 3213.82275390625 8569.064453125 3188.07666015625 8560.734375 3166.128173828125 8540.8740234375 C 3156.665283203125 8532.3125 3149.541748046875 8521.98828125 3144.5546875 8510.21875 C 3144.3681640625 8509.7783203125 3144.19970703125 8509.330078125 3143.952880859375 8508.7109375 Z" fill="#a2a561" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

class Show {
  final String id;
  final String nombrec;
  final String nombrei;
  final String nombreci;
  final String imagen;
  Show({
    required this.id,
    required this.nombrec,
    required this.nombrei,
    required this.nombreci,
    required this.imagen,
  });

  factory Show.fromJson(Map<String, dynamic> json) {
    return Show(
      id: json['id'] == null ? "" : json['id'],
      nombrec: json['nombrec'] == null ? "" : json['nombrec'],
      nombrei: json['nombrei'] == null ? "" : json['nombrei'],
      nombreci: json['nombreci'] == null ? "" : json['nombreci'],
      imagen: json['imagen'] == null ? "" : json['imagen'],
    );
  }
}
