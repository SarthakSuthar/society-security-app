import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_colors.dart';
import 'package:society_security_app/app_constants/theme/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryBlue,
      leading: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingS),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            'assets/images/man_avatar.jpg',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Fallback in case the image fails to load.
              return const Icon(Icons.person, color: Colors.white);
            },
          ),
        ),
      ),
      centerTitle: false,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sarthak Suthar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("G502", style: TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => log("Notification bell icon pressed"),
          icon: const Icon(CupertinoIcons.bell_fill, color: Colors.white),
          tooltip: 'Notifications',
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppConstants.radius),
        ),
      ),
    );
  }

  /// Defines the preferred height of the AppBar.
  /// `kToolbarHeight` is a standard Flutter constant for AppBar height.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
