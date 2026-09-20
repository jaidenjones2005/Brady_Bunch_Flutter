
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            final cellWidth = constraints.maxWidth / 3;
            final cellHeight = constraints.maxHeight / 3;

            return GridView.count(
              crossAxisCount: 3,

              // Size each cell to fit three rows on screen.
              childAspectRatio: cellWidth / cellHeight,

              // Keep all nine portraits visible at once.
              physics: const NeverScrollableScrollPhysics(),

              children: const [
                BradyTile(
                  imagePath: 'assets/images/greg.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/marcia.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/peter.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/cindy.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/alice.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/bobby.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/mike.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/carol.jpg',
                ),
                BradyTile(
                  imagePath: 'assets/images/jan.jpg',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}