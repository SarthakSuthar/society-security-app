import 'package:flutter/material.dart';
import 'package:society_security_app/app_constants/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    scaffoldBackgroundColor: AppColors.backgroundGray,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: AppColors.cardWhite,
      elevation: 0,
      centerTitle: true,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryBlue,
      selectedItemColor: AppColors.cardWhite,
      unselectedItemColor: AppColors.dividerLightGray,
      showUnselectedLabels: true,
    ),

    cardTheme: const CardThemeData(
      color: AppColors.cardWhite,
      margin: EdgeInsets.all(8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textBlack, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.textGray, fontSize: 14),
      titleMedium: TextStyle(
        color: AppColors.textBlack,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),

    dividerColor: AppColors.dividerLightGray,
    iconTheme: const IconThemeData(color: AppColors.iconGray),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black, // Primary color for dark theme
    scaffoldBackgroundColor: Colors.grey[900], // Dark background
    brightness: Brightness.dark, // Set brightness to dark

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // Dark app bar
      foregroundColor: AppColors.cardWhite,
      elevation: 0,
      centerTitle: true,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black, // Dark bottom nav
      selectedItemColor: AppColors.primaryBlue, // Highlight with primary blue
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
    ),

    cardTheme: CardThemeData(
      color: Colors.grey[850], // Darker card background
      margin: const EdgeInsets.all(8),
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.cardWhite,
        fontSize: 16,
      ), // White text for dark theme
      bodyMedium: TextStyle(color: Colors.grey, fontSize: 14),
      titleMedium: TextStyle(
        color: AppColors.cardWhite,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),

    dividerColor: Colors.grey[700], // Darker divider
    iconTheme: const IconThemeData(color: Colors.grey), // Grey icons
  );
}
