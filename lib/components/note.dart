import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 4)
          ]),
      child: Text(
        "Nota",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
