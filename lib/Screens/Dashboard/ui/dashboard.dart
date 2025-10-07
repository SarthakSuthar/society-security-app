import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_colors.dart';
import 'package:society_security_app/screens/add_post/add_post.dart';
import 'package:society_security_app/widgets/app_bar.dart';
import 'package:society_security_app/screens/dashboard/widgets/feed_card.dart';

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
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => feedCard(isNotice: true),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        onPressed: () {
          addPost(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
