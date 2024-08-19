import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  final String text;
  final void Function() onDoubleTap;

  const Note({required this.text, required this.onDoubleTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 4)
            ]),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
