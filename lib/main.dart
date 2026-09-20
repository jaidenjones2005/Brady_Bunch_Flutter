
import 'package:flutter/material.dart';
import 'brady_tile.dart';

void main() {
  runApp(const BradyBunchApp());
}

class BradyBunchApp extends StatelessWidget {
  const BradyBunchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Brady Bunch',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('The Brady Bunch'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Row(
            children: [
              Expanded(
                child: BradyTile(
                  imagePath: 'assets/images/greg.jpg',
                ),
              ),
              Expanded(
                child: BradyTile(
                  imagePath: 'assets/images/marcia.jpg',
                ),
              ),
              Expanded(
                child: BradyTile(
                  imagePath: 'assets/images/peter.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}