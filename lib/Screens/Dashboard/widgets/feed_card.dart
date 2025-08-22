import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Card for home feed
Widget feedCard({required bool? isNotice}) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(60),
                  child: Image.asset('assets/images/user.png', scale: 12),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sarthak Suthar",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "G502",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Text(
                  "Maintenance Work Schedule",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Text(
                  "Water supply will be suspended tomorrow from 10 AM to 2 PM for maintenance work in Block A.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: isNotice == true
                            ? Colors.greenAccent[100]
                            : Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: isNotice == true ? Colors.green : Colors.blue,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 5.0,
                        ),
                        child: isNotice == true
                            ? Text("Notice")
                            : Text("Announcement"),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.calendar, size: 18),
                        Text(' '),
                        Text("18/08/2025"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
