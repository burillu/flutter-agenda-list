import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageSidebar extends StatelessWidget {
  final void Function() functionBtn;
  HomePageSidebar({required this.functionBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.black12,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/D4E03AQEYk5x2BQqOmg/profile-displayphoto-shrink_800_800/0/1708207818662?e=1729728000&v=beta&t=lMjA2EHPLRDIVliFD3hvEByi5lDbxod_Opvi0xgZ3Pc"),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 25,
              ),
              onPressed: functionBtn,
            ),
          ],
        ),
      ),
    );
  }
}
