import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adventure Time",
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(10, 12, 164, 2), 
        centerTitle: true,
      ),
      body: const GoogleDriveVideoPlayer(),
      backgroundColor: const Color.fromRGBO(240, 240, 255, 1), 
    );
  }
}

class GoogleDriveVideoPlayer extends StatelessWidget {
  const GoogleDriveVideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String googleDrivePreviewUrl =
        "https://mega.nz/file/LzgViJwa#OK6L9PTfHl020h_JXjZVNLi-hPBec-PFUjvsLr2_Jvw";

    // Convierte la URL a un objeto WebUri
    final webUri = WebUri(googleDrivePreviewUrl);

    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(10, 12, 164, 0.1), 
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
