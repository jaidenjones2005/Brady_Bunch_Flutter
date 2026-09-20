
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
        body: Column(
          children: [
            // Top row
            Expanded(
              child: Row(
                children: const [
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

            // Middle row
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/cindy.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/alice.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/bobby.jpg',
                    ),
                  ),
                ],
              ),
            ),

            // Bottom row
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/mike.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/carol.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/jan.jpg',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}