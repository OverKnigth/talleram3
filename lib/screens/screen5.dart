import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dandadan",
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
        "https://mega.nz/file/JDdECTrT#At8saQcw90HhfgNSbw-uzhTH2Klyq8sl_KJxGnaMLt4";


    final webUri = WebUri(googleDrivePreviewUrl);

    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255), 
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
