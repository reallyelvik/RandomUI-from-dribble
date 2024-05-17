import 'package:flutter/material.dart';

class emojiFace extends StatelessWidget {
  final String emojis;
  const emojiFace({super.key, required this.emojis});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          emojis,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
