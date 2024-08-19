import 'package:agenda_list/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(canvasColor: ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: body(),
      ),
    );
  }

  Widget body() => HomePage();
}
