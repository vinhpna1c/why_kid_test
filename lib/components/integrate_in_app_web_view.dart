import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppIntegrated extends StatelessWidget {
  InAppIntegrated({super.key});

  late InAppWebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      onWebViewCreated: (controller) => _controller = controller,
      onConsoleMessage: (controller, msg) {
        print("Message from console: ${msg.message}");
      },
      initialUrlRequest: URLRequest(
        url: WebUri('https://vinhpna1c.github.io/asteroid_avoider_web/'),
      ),
    );
  }
}
