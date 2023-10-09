import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planet_2/home_screen_splash.dart';
import 'package:flutter_planet_2/mainmenu.dart';
import 'package:flutter_planet_2/planet_widget.dart';
import 'package:intl/intl.dart';
import 'package:moony_nav_bar/moony_nav_bar.dart';

class MiDato {
  String es;
  String nombre;
  DateTime fechaHora; // Campo que combina fecha y hora

  String tipo;
  String ubicacion;
  String observaciones;
  String imagen;

  MiDato({
    required this.es,
    required this.nombre,
    required this.fechaHora,
    required this.tipo,
    required this.ubicacion,
    required this.observaciones,
    required this.imagen,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int currentIndexh = 0; // Variable para almacenar el índice actual

  List<MiDato> datos = [
    MiDato(
      es: "1",
      nombre: "Evento 1",
      fechaHora: DateTime(2021, 6, 10, 10, 43),
      tipo: "Eclipse solar total",
      ubicacion: "n N. America, Europe, Asia",
      observaciones: "[Annular: n Canada, Greenland, Russia]",
      imagen: '',
    ),

    MiDato(
      es: "2",
      nombre: "Evento 2",
      fechaHora: DateTime(2021, 12, 4, 7, 34),
      tipo: "Eclipse solar total",
      ubicacion: "Antarctica, S. Africa, s Atlantic",
      observaciones: "[Total: Antarctica]",
      imagen: '',
    ),

    MiDato(
      es: "3",
      nombre: "Evento 3",
      fechaHora: DateTime(2022, 4, 30, 20, 42),
      tipo: "Eclipse solar parcial",
      ubicacion: "se Pacific, s S. America",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "4",
      nombre: "Evento 4",
      fechaHora: DateTime(2022, 10, 25, 11, 1),
      tipo: "Eclipse solar parcial",
      ubicacion: "Europe, ne Africa, Mid East, w Asia",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "5",
      nombre: "Evento 5",
      fechaHora: DateTime(2023, 4, 20, 4, 17),
      tipo: "Eclipse solar híbrido",
      ubicacion: "se Asia, E. Indies, Australia, Philippines. N.Z.",
      observaciones: "[Hybrid: Indonesia, Australia, Papua New Guinea]",
      imagen: '',
    ),
    MiDato(
      es: "6",
      nombre: "Evento 6",
      fechaHora: DateTime(2023, 10, 14, 18, 0),
      tipo: "Eclipse solar anular",
      ubicacion: "N. America, C. America, S. America",
      observaciones: "[Annular: w US, C. America, Colombia, Brazil]",
      imagen: '',
    ),

    MiDato(
      es: "7",
      nombre: "Evento 7",
      fechaHora: DateTime(2024, 4, 8, 18, 18),
      tipo: "Eclipse solar total",
      ubicacion: "N. America, C. America",
      observaciones: "[Total: Mexico, c US, e Canada]",
      imagen: '',
    ),
    MiDato(
      es: "8",
      nombre: "Evento 8",
      fechaHora: DateTime(2024, 10, 2, 18, 46),
      tipo: "Eclipse solar anular",
      ubicacion: "Pacific, s S. America",
      observaciones: "[Annular: s Chile, s Argentina]",
      imagen: '',
    ),

    MiDato(
      es: "9",
      nombre: "Evento 9",
      fechaHora: DateTime(2025, 3, 29, 10, 48),
      tipo: "Eclipse solar parcial",
      ubicacion: "nw Africa, Europe, n Russia",
      observaciones: "-",
      imagen: '',
    ),
    MiDato(
      es: "10",
      nombre: "Evento 10",
      fechaHora: DateTime(2025, 9, 21, 19, 43),
      tipo: "Eclipse solar parcial",
      ubicacion: "s Pacific, N.Z., Antarctica",
      observaciones: "-",
      imagen: '',
    ),
    MiDato(
      es: "11",
      nombre: "Evento 11",
      fechaHora: DateTime(2026, 2, 17, 12, 13),
      tipo: "Eclipse solar anular",
      ubicacion: "s Argentina & Chile, s Africa, Antarctica",
      observaciones: "[Annular: Antarctica]",
      imagen: '',
    ),

    MiDato(
      es: "12",
      nombre: "Evento 12",
      fechaHora: DateTime(2026, 8, 12, 17, 47),
      tipo: "Eclipse solar total",
      ubicacion: "n N. America, w Africa, Europe",
      observaciones: "[Total: Arctic, Greenland, Iceland, Spain]",
      imagen: '',
    ),

    MiDato(
      es: "13",
      nombre: "Evento 13",
      fechaHora: DateTime(2027, 2, 6, 16, 0),
      tipo: "Eclipse solar anular",
      ubicacion: "S. America, Antarctica, w & s Africa",
      observaciones: "[Annular: Chile, Argentina, Atlantic]",
      imagen: '',
    ),
    MiDato(
      es: "14",
      nombre: "Evento 14",
      fechaHora: DateTime(2027, 8, 2, 10, 7),
      tipo: "Eclipse solar total",
      ubicacion: "Africa, Europe, Mid East, w & s Asia",
      observaciones:
          "[Total:Morocco, Spain, Algeria, Libya, Egypt, Saudi Arabia, Yemen, Somalia]",
      imagen: '',
    ),

    MiDato(
      es: "15",
      nombre: "Evento 15",
      fechaHora: DateTime(2028, 1, 26, 15, 8),
      tipo: "Eclipse solar anular",
      ubicacion: "e N. America, C. & S. America, w Europe, nw Africa",
      observaciones:
          "[Annular: Ecuador, Peru, Brazil, Suriname, Spain, Portugal]",
      imagen: '',
    ),

    MiDato(
      es: "16",
      nombre: "Evento 16",
      fechaHora: DateTime(2028, 7, 22, 2, 56),
      tipo: "Eclipse solar total",
      ubicacion: "SE Asia, E. Indies, Australia, N.Z.",
      observaciones: "[Total: Australia, N. Z.]",
      imagen: '',
    ),

    MiDato(
      es: "17",
      nombre: "Evento 17",
      fechaHora: DateTime(2029, 1, 14, 17, 13),
      tipo: "Eclipse solar parcial",
      ubicacion: "N. America, C. America",
      observaciones: "-",
      imagen: '',
    ),
    MiDato(
      es: "18",
      nombre: "Evento 18",
      fechaHora: DateTime(2029, 6, 12, 4, 6),
      tipo: "Eclipse solar parcial",
      ubicacion: "Arctic, Scandinavia, Alaska, n Asia, n Canada",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "19",
      nombre: "Evento 19",
      fechaHora: DateTime(2029, 7, 11, 15, 37),
      tipo: "Eclipse solar parcial",
      ubicacion: "s Chile, s Argentina",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "1",
      nombre: "Evento 20",
      fechaHora: DateTime(2029, 12, 5, 15, 3),
      tipo: "Eclipse solar parcial",
      ubicacion: "s Argentina, s Chile, Antarctica",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "21",
      nombre: "Evento 21",
      fechaHora: DateTime(2030, 6, 1, 6, 29),
      tipo: "Eclipse solar anular",
      ubicacion: "Europe, n Africa, Mid East, Asia, Arctic, Alaska",
      observaciones:
          "[Annular: Algeria, Tunisia, Greece, Turkey, Russia, n. China, Japan]",
      imagen: '',
    ),
    MiDato(
      es: "22",
      nombre: "Evento 22",
      fechaHora: DateTime(2030, 11, 25, 6, 51),
      tipo: "Eclipse solar total",
      ubicacion: "s Africa, s Indian Oc., E. Indies, Australia, Antarctica",
      observaciones: "[Total: Botswana, S. Africa, Australia]",
      imagen: '',
    ),

    MiDato(
      es: "23",
      nombre: "Evento 23",
      fechaHora: DateTime(2021, 5, 26, 11, 19),
      tipo: "eclipse lunar total",
      ubicacion: "e Asia, Australia, Pacific, Americas",
      observaciones: "03h07m 00h15m",
      imagen: '',
    ),

    MiDato(
      es: "24",
      nombre: "Evento 24",
      fechaHora: DateTime(2021, 11, 19, 9, 4),
      tipo: "eclipse lunar parcial",
      ubicacion: "Americas, n Europe, e Asia, Australia, Pacific",
      observaciones: "03h28m",
      imagen: '',
    ),

    MiDato(
      es: "25",
      nombre: "Evento 25",
      fechaHora: DateTime(2022, 5, 16, 4, 12),
      tipo: "eclipse lunar total",
      ubicacion: "Americas, Europe, Africa",
      observaciones: "03h27m 01h25m",
      imagen: '',
    ),

    MiDato(
      es: "26",
      nombre: "Evento 26",
      fechaHora: DateTime(2022, 11, 8, 11, 0),
      tipo: "eclipse lunar total",
      ubicacion: "Asia, Australia, Pacific, Americas",
      observaciones: "03h40m 01h25m",
      imagen: '',
    ),

    MiDato(
      es: "27",
      nombre: "Evento 27",
      fechaHora: DateTime(2023, 5, 5, 17, 24),
      tipo: "eclipse lunar penumbral",
      ubicacion: "Africa, Asia, Australia",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "28",
      nombre: "Evento 28",
      fechaHora: DateTime(2023, 10, 28, 20, 15),
      tipo: "eclipse lunar parcial",
      ubicacion: "e Americas, Europe, Africa, Asia, Australia",
      observaciones: "01h17m",
      imagen: '',
    ),

    MiDato(
      es: "29",
      nombre: "Evento 29",
      fechaHora: DateTime(2024, 3, 25, 7, 13),
      tipo: "eclipse lunar penumbral",
      ubicacion: "Americas",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "30",
      nombre: "Evento 30",
      fechaHora: DateTime(2024, 9, 18, 2, 45),
      tipo: "eclipse lunar parcial",
      ubicacion: "Americas, Europe, Africa",
      observaciones: "01h03m",
      imagen: '',
    ),

    MiDato(
      es: "31",
      nombre: "Evento 31",
      fechaHora: DateTime(2025, 3, 14, 6, 59),
      tipo: "eclipse lunar total",
      ubicacion: "Pacific, Americas, w Europe, w Africa",
      observaciones: "03h38m 01h05m",
      imagen: '',
    ),

    MiDato(
      es: "32",
      nombre: "Evento 32",
      fechaHora: DateTime(2025, 9, 7, 18, 12),
      tipo: "eclipse lunar total",
      ubicacion: "Europe, Africa, Asia, Australia",
      observaciones: "03h29m 01h22m",
      imagen: '',
    ),

    MiDato(
      es: "33",
      nombre: "Evento 33",
      fechaHora: DateTime(2026, 3, 3, 11, 34),
      tipo: "eclipse lunar total",
      ubicacion: "e Asia, Australia, Pacific, Americas",
      observaciones: "03h27m 00h58m",
      imagen: '',
    ),

    MiDato(
      es: "34",
      nombre: "Evento 34",
      fechaHora: DateTime(2026, 8, 28, 4, 14),
      tipo: "eclipse lunar parcial",
      ubicacion: "e Pacific, Americas, Europe, Africa",
      observaciones: "03h18m",
      imagen: '',
    ),
    MiDato(
      es: "35",
      nombre: "Evento 35",
      fechaHora: DateTime(2027, 2, 20, 23, 14),
      tipo: "eclipse lunar penumbral",
      ubicacion: "Americas, Europe, Africa, Asia",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "36",
      nombre: "Evento 36",
      fechaHora: DateTime(2027, 7, 18, 16, 4),
      tipo: "eclipse lunar penumbral",
      ubicacion: "e Africa, Asia, Australia, Pacific",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "37",
      nombre: "Evento 37",
      fechaHora: DateTime(2027, 8, 17, 7, 14),
      tipo: "eclipse lunar penumbral",
      ubicacion: "Pacific, Americas",
      observaciones: "-",
      imagen: '',
    ),

    MiDato(
      es: "38",
      nombre: "Evento 38",
      fechaHora: DateTime(2028, 1, 12, 4, 14),
      tipo: "eclipse lunar parcial",
      ubicacion: "Americas, Europe, Africa",
      observaciones: "00h56m",
      imagen: '',
    ),

    MiDato(
      es: "2",
      nombre: "Evento 39",
      fechaHora: DateTime(2028, 7, 6, 18, 20),
      tipo: "eclipse lunar parcial",
      ubicacion: "Europe, Africa, Asia, Australia",
      observaciones: "02h21m",
      imagen: '',
    ),

    MiDato(
      es: "40",
      nombre: "Evento 40",
      fechaHora: DateTime(2028, 12, 31, 16, 53),
      tipo: "eclipse lunar total",
      ubicacion: "Europe, Africa, Asia, Australia, Pacific",
      observaciones: "03h29m 01h11m",
      imagen: '',
    ),

    MiDato(
      es: "41",
      nombre: "Evento 41",
      fechaHora: DateTime(2029, 6, 26, 3, 23),
      tipo: "eclipse lunar total",
      ubicacion: "Americas, Europe, Africa, Mid East",
      observaciones: "03h40m 01h42m",
      imagen: '',
    ),

    MiDato(
      es: "42",
      nombre: "Evento 42",
      fechaHora: DateTime(2029, 12, 20, 22, 43),
      tipo: "eclipse lunar total",
      ubicacion: "Americas, Europe, Africa, Asia",
      observaciones: "03h33m 00h54m",
      imagen: '',
    ),

    MiDato(
      es: "43",
      nombre: "Evento 43",
      fechaHora: DateTime(2030, 6, 15, 18, 34),
      tipo: "eclipse lunar parcial",
      ubicacion: "Europe, Africa, Asia, Australia",
      observaciones: "02h24m",
      imagen: '',
    ),

    MiDato(
      es: "44",
      nombre: "Evento 44",
      fechaHora: DateTime(2030, 12, 9, 22, 28),
      tipo: "eclipse lunar penumbral",
      ubicacion: "Americas, Europe, Africa, Asia",
      observaciones: "-",
      imagen: '',
    ),

    // Agrega más objetos MiDato se gún sea necesario
  ];
  DateTime fechaEclipse = DateTime.now();

  Duration tiempoRestante = const Duration(seconds: 0);
  Widget build(BuildContext context) {
    DateTime _selectedDate = DateTime.now();

    var fecha = DateFormat('yyyy-MM-dd').format(_selectedDate);

    switch (currentIndexh) {
      case 2:
        DateTime fechaActual = DateTime.now();
        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "Eclipse solar total")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo
          DateTime fechaActual = DateTime.now();

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;
      case 3:
        DateTime fechaActual = DateTime.now();
        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "Eclipse solar anular")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo
          DateTime fechaActual = DateTime.now();

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;
      case 4:
        DateTime fechaActual = DateTime.now();
        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "Eclipse solar parcial")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo
          DateTime fechaActual = DateTime.now();

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;
      case 5:
        DateTime fechaActual = DateTime.now();

        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "Eclipse solar híbrido")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;
      case 6:
        DateTime fechaActual = DateTime.now();

        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "eclipse lunar total")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo
          DateTime fechaActual = DateTime.now();

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;
      case 7:
        DateTime fechaActual = DateTime.now();

        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "eclipse lunar parcial")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;

      case 8:
        DateTime fechaActual = DateTime.now();

        List<MiDato> eclipsesFiltrados = datos
            .where((eclipse) =>
                eclipse.fechaHora.isAfter(fechaActual) &&
                eclipse.tipo == "eclipse lunar penumbral")
            .toList();
        if (eclipsesFiltrados.isNotEmpty) {
          eclipsesFiltrados.sort((a, b) => a.fechaHora.compareTo(b.fechaHora));
          MiDato? eclipseProximo =
              eclipsesFiltrados.isNotEmpty ? eclipsesFiltrados.first : null;

          // Calcular la diferencia de tiempo entre la fecha actual y el eclipse más próximo

          setState(() {
            fechaEclipse = eclipseProximo!.fechaHora;
            tiempoRestante = fechaEclipse.difference(fechaActual);
          });
        } else {}
        break;

      default:
    }

    var fechaF = DateFormat('yyyy-MM-dd').format(fechaEclipse);

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.amber),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Card(
                          color: Colors.transparent,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 0, top: 40, right: 80, bottom: 80),
                              child: menuPage())),
                    );
                  },
                );
              })),
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
                        Spacer(),
                        Image.asset(
                          "assets/ic_avatar.png",
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "${tiempoRestante.inHours} hours, ${tiempoRestante.inMinutes % 60} minute y ${tiempoRestante.inSeconds % 60} seconds",
                        ),
                        Text(
                          fecha,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          fechaF.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 1.0,
                              enlargeCenterPage: true,
                              viewportFraction: 0.6,
                              initialPage: 0,
                              pauseAutoPlayOnTouch: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndexh = index;
                                });
                                // El índice actual se almacena en la variable currentIndex
                                print("Índice actual: $currentIndexh");

                                // Realiza aquí las validaciones o acciones que necesites
                              },
                            ),
                            items: [
                              PlanetWidget(
                                  "Eclipse Concept", "assets/images/1.gif", "An eclipse occurs when the moon comes directly between the sun and the earth to result in incredible views of the solar disk totally or partially obscured by the lunar disk from which derive other phenomena that we will discover later. The same happens when the earth is interposed between the sun and the moon so that the moon can be totally or partially obscured by the shadow of the globe.","How many types of solar eclipses are there? According to the above we can mention that there are two main types of eclipses: solar and lunar. However there are several factors that can determine a specific type of eclipse: According to the above we can mention that there are two main types of eclipses: solar and lunar. However there are several factors that can determine a specific type of eclipse:- Distance between the moon and the earth (perigee or apogee). - Angle of inclination of the lunar orbit. - Approximation of the moon on the ecliptic line (point where it coincides with the plane of the sun).  Can only a portion of the Earth view a solar eclipse: An eclipse occurs when the Moon passes between the Earth and the Sun casting a shadow on the Earth that totally or partially blocks the Sun's light in some areas. However not everyone experiences every solar eclipse equally. The opportunity to see a total solar eclipse is somewhat rare. The Moon's shadow on Earth is not very large so only a small portion of places on Earth will see it. Also you must be on the sunny side of the planet when it happens. You must also be in the path of the Moon's shadow. On average the same place on Earth only gets to see a total solar eclipse for a few minutes about every 375 years. How often does a solar eclipse occur? As we know the plane of the lunar orbit has an inclination of about 5° leaving the possibility of the moon intercepting the earth's orbit while lying between the sun and the earth totally random. This is called a lunar node. In terms of frequency these phenomena can be seen at some point on Earth approximately every 18 months. Scientists can predict when and where eclipses will occur because of the predictable orbits of the Sun Earth and Moon. These three celestial bodies orbit in space following very predictable trajectories. For example NASA has released a map showing the paths of the 2023 and 2024 solar eclipses in the United States. This map is based on observations from several NASA missions and details the path of the Moon's shadow as it crosses the United States during the annular solar eclipse on October 14 2023 and the total solar eclipse on April 8 2024.","https://smd-cms.nasa.gov/wp-content/uploads/2022/10/700-701-eclipseplane-v7-1.m4v","https://smd-cms.nasa.gov/wp-content/uploads/2023/07/5662_2017_Total_Solar_Eclipse-2.jpeg?resize=2000,1586","https://smd-cms.nasa.gov/wp-content/uploads/2022/10/eclipseelements60fps-4-11-2023a-total-diagram.mp4","https://smd-cms.nasa.gov/wp-content/uploads/2022/10/701-702-shadow-cones-1080.m4v","https://youtu.be/qZaxqMyP9tU"),
                              PlanetWidget(
                                  "Total solar eclipse",
                                  "assets/images/2.gif",
                                  " This occurs when the moon is close enough to the earth and the ecliptic line to completely obscure the solar disk for a few minutes between the first and second partial phase where the moon progressively obscures the sun to then give way to the total phase and finally leave the sun uncovered again."," This occurs when the moon is close enough to the earth and the ecliptic line to completely obscure the solar disk for a few minutes between the first and second partial phase where the moon progressively obscures the sun to then give way to the total phase and finally leave the sun uncovered again.","https://www.asc-csa.gc.ca/videos/recherche/1_u5yikuyd/1_zkeca62n.mp4","https://www.asc-csa.gc.ca/eng/multimedia/search/image/watch/7735","https://www.asc-csa.gc.ca/eng/multimedia/search/image/watch/7758","",""),
                              PlanetWidget(
                                  "Annular solar eclipse",
                                  "assets/images/3.gif",
                                   " This is similar to a total solar eclipse with the difference that this time the moon is at its apogee (farthest distance from the earth) so the lunar disk is not large enough to completely cover the sun because during the total phase of an annular solar eclipse a part of the solar disk is exposed giving an appearance of a ring of fire."," This is similar to a total solar eclipse with the difference that this time the moon is at its apogee (farthest distance from the earth) so the lunar disk is not large enough to completely cover the sun because during the total phase of an annular solar eclipse a part of the solar disk is exposed giving an appearance of a ring of fire.","https://www.asc-csa.gc.ca/images/recherche/tiles/f7752884-54d4-483a-9f93-48cc770ac58e.jpg","https://www.asc-csa.gc.ca/videos/recherche/1_iyy9ynac/1_v6m5xax9.webm","","",""),
                              PlanetWidget(
                                  "Hybrid solar eclipse",
                                  "assets/images/4.gif",
                               "Because the Earth's surface is curved sometimes an eclipse can alternate between annular and total as the Moon's shadow moves across the globe. In other words while a total solar eclipse is seen at one point on the planet further west an annular solar eclipse is seen. It is important to note that a total or annular eclipse can be seen as if it were partial if the point of view from the Earth's surface is below the penumbral zone of the eclipse while those below the numbral zone will see the Moon centered over the solar disk.","Because the Earth's surface is curved sometimes an eclipse can alternate between annular and total as the Moon's shadow moves across the globe. In other words while a total solar eclipse is seen at one point on the planet further west an annular solar eclipse is seen. It is important to note that a total or annular eclipse can be seen as if it were partial if the point of view from the Earth's surface is below the penumbral zone of the eclipse while those below the numbral zone will see the Moon centered over the solar disk.","","","","",""),
                              PlanetWidget(
                                  "Partial solar eclipse",
                                  "assets/images/5.gif",
                                   "Partial eclipses like the previous ones occur when the moon is between the sun and the earth but not sufficiently aligned with the line of the ecliptic so that only part of the sun is covered during the entire event. This is because the inclination of the lunar orbit is slightly tilted.","Partial eclipses like the previous ones occur when the moon is between the sun and the earth but not sufficiently aligned with the line of the ecliptic so that only part of the sun is covered during the entire event. This is because the inclination of the lunar orbit is slightly tilted.","https://www.nasa.gov/wp-content/uploads/2023/03/51238521674_3297226a3a_o.jpeg?resize=1024,1024","","","",""),
                              PlanetWidget(
                                  "Total lunar eclipse",
                                  "assets/images/6.gif",
                                  "also popularly known as blood moon this event occurs due to the occultation of the moon behind the earth parallel to the sun and the sun itself is very close to the ecliptic line. During the partial and total phase the moon gets an apparent reddish color because the earth's atmosphere acts as a lens that scatters the white light from the sun leaving the blue light outward and the red light in the center. It lasts between 5 to 6 hours with almost an hour during its total phase.","also popularly known as blood moon this event occurs due to the occultation of the moon behind the earth parallel to the sun and the sun itself is very close to the ecliptic line. During the partial and total phase the moon gets an apparent reddish color because the earth's atmosphere acts as a lens that scatters the white light from the sun leaving the blue light outward and the red light in the center. It lasts between 5 to 6 hours with almost an hour during its total phase.","https://www.nasa.gov/wp-content/uploads/2023/03/52486072251_b8254d9621_o.jpg?resize=1024,774","","","",""),
                              PlanetWidget(
                                  "Partial lunar eclipse",
                                  "assets/images/7.gif",
                                  "Like a partial solar eclipse this occurs when the moon is hidden behind the earth and is not fully aligned with the line of the ecliptic causing only a portion of the full moon to be covered by the earths shadow. It lasts between 3 to 5 hours.","Like a partial solar eclipse this occurs when the moon is hidden behind the earth and is not fully aligned with the line of the ecliptic causing only a portion of the full moon to be covered by the earths shadow. It lasts between 3 to 5 hours.","https://www.nasa.gov/wp-content/uploads/2023/03/partial-lunar-eclipse.jpg","","","",""),
                              PlanetWidget(
                                  "Penumbral lunar eclipse",
                                  "assets/images/8.gif",
                                  " this is a not very noticeable event where the moon during its full phase goes very little into the line of the ecliptic causing the diffuse outer zone of the earth's shadow to very slightly darken one side of the moon. it lasts approximately 30 minutes."," this is a not very noticeable event where the moon during its full phase goes very little into the line of the ecliptic causing the diffuse outer zone of the earth's shadow to very slightly darken one side of the moon. it lasts approximately 30 minutes.","https://cdn.mos.cms.futurecdn.net/hDbCvHWbYTSPBGJi9vmeHf-970-80.jpeg","","","",""),
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
                        Text(
                          "nasa space apps 2023",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 20,
                        )
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

  final Widget _screen1 = const HomeScreen();

  final Widget _screen2 = const HomeScreen();

  int selectedIndex = 0;
  Widget getBody() {
    if (selectedIndex == 0) {
      return _screen1;
    } else if (selectedIndex == 1) {
      return _screen2;
    }
    return _screen2;
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
