import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_constants.dart';
import 'package:society_security_app/widgets/app_container.dart';

/// Card for home feed
Widget feedCard({required bool? isNotice}) {
  return Padding(
    padding: const EdgeInsets.all(AppConstants.paddingM),
    child: AppContainer(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(60),
                  child: Image.asset(
                    'assets/images/man_avatar.jpg',
                    scale: AppConstants.spaceM,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sarthak Suthar",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "G502",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
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
                child: Text('''
Dear Residents,
This is to inform all members of the Vaghodia Heights Housing Society that the Monthly General Body Meeting will be held as per the details below:
📅 Date: Sunday, 24th August 2025🕒 Time: 5:00 PM
''', style: TextStyle(fontSize: 15)),
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
                        borderRadius: BorderRadius.circular(
                          AppConstants.radius,
                        ),
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
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(CupertinoIcons.calendar, size: 14),
                        Text(' '),
                        Text("18/08/2025", style: TextStyle(fontSize: 12)),
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
