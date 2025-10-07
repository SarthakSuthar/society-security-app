import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_colors.dart';
import 'package:society_security_app/app_constants/theme/app_constants.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.iconGray,
          width: AppConstants.boarder,
        ),
        borderRadius: BorderRadius.circular(AppConstants.radius),
      ),
      child: Padding(padding: const EdgeInsets.all(8.0), child: child),
    );
  }
}
