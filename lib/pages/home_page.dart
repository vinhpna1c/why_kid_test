import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _splashBubble = [];
  List<Offset> _splashOffsets = [];
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 10,
              child: ElevatedButton(
                onPressed: () {
                  print("splash length: " + _splashBubble.length.toString());
                  setState(() {
                    _splashBubble.add('assets/test1.gif');
                    final newOffset = Offset(
                        _random.nextDouble() *
                                MediaQuery.of(context).size.width -
                            100,
                        _random.nextDouble() *
                            MediaQuery.of(context).size.height);
                    print(newOffset);
                    _splashOffsets.add(newOffset);
                  });
                },
                child: Text("Add splash bubble"),
              ),
            ),
            ...List.generate(
              _splashBubble.length,
              (index) => Positioned(
                top: _splashOffsets[index].dy,
                left: _splashOffsets[index].dx,
                child: SizedBox.fromSize(
                  size: Size.square(300),
                  child: Image.asset(
                    _splashBubble[index],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
