import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// // Only import universal_html for non-mobile platforms
// // `universal_html` should be ignored for mobile platforms
import 'package:universal_html/html.dart' as html;

class RoomReservation extends StatefulWidget {
  const RoomReservation({super.key});

  @override
  State<RoomReservation> createState() => _RoomReservationState();
}

class _RoomReservationState extends State<RoomReservation> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    if (kIsWeb ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      // Open URL in browser for non-mobile platforms
      html.window.open('http://ittp.link/reservasikunjungan', '_blank');
    } else {
      // Initialize WebView controller for mobile platforms
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse('http://ittp.link/reservasikunjungan'));
    }
  }

  // final controller = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..loadRequest(Uri.parse('https://flutter.dev'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("webview"),
        ),
        // body: WebViewWidget(
        //   controller: controller,
        // ),
        body: (kIsWeb ||
                defaultTargetPlatform == TargetPlatform.windows ||
                defaultTargetPlatform == TargetPlatform.linux ||
                defaultTargetPlatform == TargetPlatform.macOS)
            ? const Center(
                child: Text(
                  'Opening in browser...',
                  style: TextStyle(fontSize: 20),
                ),
              )
            : WebViewWidget(controller: _controller));
  }
}

void main() {
  runApp(const MaterialApp(
    home: RoomReservation(),
  ));
}
