// ignore_for_file: deprecated_member_use

import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/presentation/chat/screen/chat_screen.dart';
import 'package:clinic_app_flutter/presentation/history/screen/history_screen.dart';
import 'package:clinic_app_flutter/presentation/home/widgets/nav_item.dart';
import 'package:clinic_app_flutter/presentation/profile/screen/profile_screen.dart';
import 'package:clinic_app_flutter/presentation/telemedis/screen/telemedis_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final int initialIndex;
  const HomeScreen({
    super.key,
    required this.initialIndex,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ChatScreen(),
    const TelemedisScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.lightBackground,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              iconPath: ResourcePath.chatIconSvg,
              label: 'Chat',
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavItem(
                iconPath: ResourcePath.telemedisIconSvg,
                label: 'Telemedis',
                isActive: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                }),
            NavItem(
              iconPath: ResourcePath.historyIconSvg,
              label: 'History',
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            NavItem(
              iconPath: ResourcePath.profileCircleIconSvg,
              label: 'Profile',
              isActive: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
