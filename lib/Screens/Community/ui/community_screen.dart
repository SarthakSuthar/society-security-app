import 'package:flutter/material.dart';
import 'package:society_security_app/AppConstants/AppBar/app_bar.dart';
import 'package:society_security_app/AppConstants/AppBar/app_utils.dart';
import 'package:society_security_app/Screens/Community/widgets/house_count_widget.dart';
import 'package:society_security_app/Screens/Community/widgets/user_detail_card_widget.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: appBar() as PreferredSizeWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: houseCountWidget(
                      count: 182,
                      title: 'Total Units',
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: houseCountWidget(
                      count: 140,
                      title: 'Occupied',
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: houseCountWidget(
                      count: 42,
                      title: 'Vacant',
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              ContactCard(
                name: "Sarthak",
                role: "Owner",
                houseNo: "G502",
                phone: "9876543210",
                onCall: () {
                  showlog("call taped!");
                },
                onMessage: () {
                  showlog("message taped!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
