import 'package:agenda_list/pages/home/partials/home_page_main.dart';
import 'package:agenda_list/pages/home/partials/home_page_sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> notes = [];

  final List<String> samples = [
    'Nota 1',
    'Tu sorella',
    'SamanafattuBabbudoiu',
    'Uso Flutter, ma sono etero'
  ];

  void addNote() {
    setState(() {
      samples.shuffle();
      String note = samples.first;
      notes.add(note);
    });
  }

  void removeNote(String note) {
    setState(() {
      notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomePageSidebar(
          functionBtn: addNote,
        ),
        HomePageMain(
          notes: notes,
          funcRemove: removeNote,
        )
      ],
    );
  }
}
