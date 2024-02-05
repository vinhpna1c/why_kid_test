import 'package:flutter/material.dart';
import 'package:why_kid_test/components/integrate_in_app_web_view.dart';
import 'package:why_kid_test/components/integrate_web_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget centerWidget = IntegrateWebView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                child: Text("Using webview_flutter"),
                onTap: () {
                  setState(() {
                    centerWidget = IntegrateWebView();
                  });
                },
              ),
              PopupMenuItem(
                child: Text("Using in_app_webview"),
                onTap: () {
                  setState(() {
                    centerWidget = InAppIntegrated();
                  });
                },
              ),
            ];
          })
        ],
      ),
      body: Container(
        color: Colors.white,
        child: centerWidget,
      ),
    );
  }
}
