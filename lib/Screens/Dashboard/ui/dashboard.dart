import 'package:flutter/material.dart';
import 'package:society_security_app/AppConstants/AppBar/app_bar.dart';
import 'package:society_security_app/Screens/Dashboard/widgets/feed_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: appBar() as PreferredSizeWidget,
      body: SingleChildScrollView(
        child: Column(
          children: [feedCard(isNotice: false), feedCard(isNotice: true)],
        ),
      ),
    );
  }
}
