import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLevel;
  const Difficulty({
    required this.difficultyLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: (difficultyLevel >= 1) ? Colors.green : Colors.green[100],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: (difficultyLevel >= 2) ? Colors.green : Colors.green[100],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: (difficultyLevel >= 3) ? Colors.green : Colors.green[100],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: (difficultyLevel >= 4) ? Colors.green : Colors.green[100],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: (difficultyLevel >= 5) ? Colors.green : Colors.green[100],
          size: 15,
        ),
      ],
    );
  }
}
