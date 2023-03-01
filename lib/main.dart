import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int turn = 1;

  @override
  Widget build(BuildContext context) {
    print(turn);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/bird.jpg',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Positioned(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  // child: RotatedBox(
                  //   quarterTurns: turn,
                  //   child: ImageFiltered(
                  //     imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           turn++;
                  //         });
                  //       },
                  //       child: Text(
                  //         "Rotated Box",
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  child: TextField(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
