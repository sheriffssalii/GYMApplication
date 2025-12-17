import 'package:flutter/material.dart';
import '../models/coach_model.dart';

class CoachCard extends StatelessWidget {
  final Coach coach;
  final VoidCallback onTap;

  const CoachCard({
    super.key,
    required this.coach,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              coach.image,
              height: 120,
              fit: BoxFit.cover,
            ),
            Text(coach.name),
            Text(coach.specialty),
            Text("${coach.experience} years experience"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(coach.rating.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
