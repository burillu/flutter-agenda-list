import 'package:agenda_list/components/note.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(10),
      width: 100,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Agenda",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [Note(), Note(), Note()],
            )
          ],
        ),
      ),
    ));
  }
}
