import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;

  const ExerciseTile(
      {super.key,
      required this.icon,
      required this.exerciseName,
      required this.numberOfExercise,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
                padding: EdgeInsets.all(14),
                color: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
          ),
          title: Text(
            exerciseName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(numberOfExercise.toString() + ' Exercises'),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
