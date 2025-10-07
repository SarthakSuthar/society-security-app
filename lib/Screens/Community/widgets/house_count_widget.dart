import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_constants.dart';

Widget houseCountWidget({
  required int count,
  required String title,
  required Color color,
}) {
  return Container(
    margin: EdgeInsets.all(AppConstants.spaceS),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(AppConstants.radius),
      border: Border.all(color: Colors.grey, width: AppConstants.boarder),
    ),
    child: SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
