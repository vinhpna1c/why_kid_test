import 'package:flutter/material.dart';
import 'package:why_kid_test/components/integrate_in_app_web_view.dart';
import 'package:why_kid_test/components/integrate_web_view.dart';

class TestGamePage extends StatelessWidget {
  const TestGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: InAppIntegrated()),
    );
  }
}
