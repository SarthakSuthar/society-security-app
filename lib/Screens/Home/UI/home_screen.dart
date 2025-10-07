import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:society_security_app/app_constants/theme/app_colors.dart';
import 'package:society_security_app/app_constants/theme/app_constants.dart';
import 'package:society_security_app/screens/add_post/add_post.dart';
import 'package:society_security_app/screens/community/ui/community_screen.dart';
import 'package:society_security_app/screens/dashboard/ui/dashboard.dart';
import 'package:society_security_app/screens/profile/ui/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      // onItemSelected: (index) {
      //   if (index == 2) {
      //     // Index 2 is your AddPost tab
      //     addPost(context);
      //   }
      // },
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionS  creensType.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: AppColors.primaryBlue,
      isVisible: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppConstants.radius),
        ),
        colorBehindNavBar: Colors.white,
      ),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property
    );
  }

  List<Widget> _buildScreens() {
    return [Dashboard(), CommunityScreen(), ProfileScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        // title: ("Home"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
        // scrollController: _scrollController1,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const Dashboard(),
            "/second": (final context) => const CommunityScreen(),
            "/third": (final context) => const ProfileScreen(),
            // "/third": (final context) => Dashboard(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_3),
        // title: ("Community"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
        // scrollController: _scrollController1,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const Dashboard(),
            "/second": (final context) => const CommunityScreen(),
            "/third": (final context) => const ProfileScreen(),
            // "/third": (final context) => Dashboard(),
          },
        ),
      ),
      // PersistentBottomNavBarItem(
      //   icon: Icon(CupertinoIcons.add_circled),
      //   // title: ("Community"),
      //   activeColorPrimary: Colors.white,
      //   inactiveColorPrimary: Colors.white54,
      //   // scrollController: _scrollController1,
      //   routeAndNavigatorSettings: RouteAndNavigatorSettings(
      //     initialRoute: "/",
      //     routes: {
      //       "/first": (final context) => const Dashboard(),
      //       "/second": (final context) => const CommunityScreen(),
      //       "/third": (final context) => Dashboard(),
      //       "/fourth": (final context) => const ProfileScreen(),
      //     },
      //   ),
      // ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        // title: ("Profile"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
        // scrollController: _scrollController2,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const Dashboard(),
            "/second": (final context) => const CommunityScreen(),
            "/third": (final context) => const ProfileScreen(),
            // "/third": (final context) => Dashboard(),
          },
        ),
      ),
    ];
  }
}
