import 'dart:io';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'dart:io';
import 'dart:io';
import 'package:flutter/material.dart';

class PageHomes extends StatefulWidget {
  final String url;
  PageHomes({required this.url});

  @override
  _PageHomesState createState() => _PageHomesState();
}

class _PageHomesState extends State<PageHomes> {
  final ioc = new HttpClient();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
  initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
  initialOptions: InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      javaScriptEnabled: true,
      javaScriptCanOpenWindowsAutomatically: true,
      cacheEnabled: true,
      // Configuración de tamaño y zoom
      useOnLoadResource: true,
      useShouldInterceptAjaxRequest: true,
      useShouldInterceptFetchRequest: true,
      userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', // Cambiar el User-Agent para que parezca un navegador de escritorio

    ),
  ),
  onProgressChanged: (_, load) {
    setState(() {});
  },
  onWebViewCreated: (controller) {
   
  },
  onReceivedServerTrustAuthRequest: (controller, challenge) async {
    print(challenge);
    return ServerTrustAuthResponse(
        action: ServerTrustAuthResponseAction.PROCEED);
  },
  onLoadError: (controller, url, code, message) {
  print("Error de carga: $code, $message");
},
);

  }
}
