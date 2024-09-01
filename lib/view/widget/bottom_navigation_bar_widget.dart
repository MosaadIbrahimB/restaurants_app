import 'package:flutter/material.dart';
class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff5663FF),
        unselectedItemColor: const Color(0xff6E7FAA),
        selectedIconTheme: const IconThemeData(size: 35),
        onTap: (v) {
          setState(() {
            index = v;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
    );
  }
}