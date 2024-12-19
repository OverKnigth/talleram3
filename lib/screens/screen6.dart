import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dragon Ball Daima",
          style: TextStyle(
            color: Colors.white, // Texto blanco para contraste
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(10, 12, 164, 2), // Fondo azul personalizado
        centerTitle: true,
      ),
      body: const GoogleDriveVideoPlayer(),
      backgroundColor: const Color.fromRGBO(240, 240, 255, 1), // Fondo claro para contraste
    );
  }
}

class GoogleDriveVideoPlayer extends StatelessWidget {
  const GoogleDriveVideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String googleDrivePreviewUrl =
        "https://mega.nz/file/MPUSHbhL#lCu95z-9Qdmrx15NqkzfUI9l8LVt9RnkK-rsCoC-qJg";

    // Convierte la URL a un objeto WebUri
    final webUri = WebUri(googleDrivePreviewUrl);

    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(10, 12, 164, 0.1), // Fondo con un toque de azul
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: const Color.fromRGBO(10, 12, 164, 2),
                width: 2.0,
              ),
            ),
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: webUri,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
