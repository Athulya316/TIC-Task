import 'package:flutter/material.dart';

class MoodItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;

  const MoodItem(this.title, this.icon, this.color, {super.key});

  @override
  State<MoodItem> createState() => _MoodItemState();
}

class _MoodItemState extends State<MoodItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(widget.icon, color: Colors.white, size: 32),
        ),
        const SizedBox(height: 6),
        Text(widget.title),
      ],
    );
  }
}
