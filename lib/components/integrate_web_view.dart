import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IntegrateWebView extends StatefulWidget {
  const IntegrateWebView({super.key});

  @override
  State<IntegrateWebView> createState() => _IntegrateWebViewState();
}

class _IntegrateWebViewState extends State<IntegrateWebView> {
  final _controler = WebViewController();

  @override
  void initState() {
    _controler.loadRequest(
        Uri.parse('https://vinhpna1c.github.io/asteroid_avoider_web/'));
    _controler.setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _controler,
    );
  }
}
