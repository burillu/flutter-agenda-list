import 'package:agenda_list/pages/home/partials/home_page_main.dart';
import 'package:agenda_list/pages/home/partials/home_page_sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> notes = ['Nota 1', 'Tu sorella', 'SamanafattuBabbudoiu'];

  void addNote(String note) {
    setState(() {
      notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomePageSidebar(
          functionBtn: addNote,
        ),
        HomePageMain(
          notes: notes,
        )
      ],
    );
  }
}
