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
    'Uso Flutter, ma sono all\'estero',
    'To-DO: Create a new to-do starting from a no existing to-do list'
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
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          HomePageSidebar(
            functionBtn: addNote,
          ),
          Positioned(
            right: 0,
            left: 50,
            top: 0,
            bottom: 0,
            child: HomePageMain(
              notes: notes,
              funcRemove: removeNote,
            ),
          )
        ],
      ),
    );
  }
}
