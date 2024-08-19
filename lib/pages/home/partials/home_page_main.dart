import 'package:agenda_list/components/note.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatelessWidget {
  final List<String> notes;
  final void Function(String note) funcRemove;

  const HomePageMain({required this.notes, required this.funcRemove});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 100,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: notes
                    .map((note) => Note(
                          text: note,
                          onDoubleTap: () => funcRemove(note),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
