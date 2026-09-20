
import 'package:flutter/material.dart';

class BradyTile extends StatelessWidget {
  final String imagePath;

  const BradyTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      color: Colors.black,
      padding: const EdgeInsets.all(4.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}