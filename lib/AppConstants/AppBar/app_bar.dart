import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(60),
      child: Image.asset('assets/images/user.png', scale: 12),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sarthak Suthar", style: TextStyle(color: Colors.white)),
        Text("G502", style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    ),
    actions: [
      InkWell(
        onTap: () => log("bell icon pressed"),
        child: Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(CupertinoIcons.bell_fill, color: Colors.white),
        ),
      ),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
    ),
  );
}
