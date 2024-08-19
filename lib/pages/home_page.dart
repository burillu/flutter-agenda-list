import 'package:agenda_list/pages/partials/home_page_sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomePageSidebar(),
        Expanded(child: Container(width: 100, color: Colors.black))
      ],
    );
  }
}
