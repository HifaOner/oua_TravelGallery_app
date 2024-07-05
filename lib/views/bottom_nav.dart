import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_gallery_app/views/categories.dart';
import 'package:travel_gallery_app/views/chat.dart';
import 'package:travel_gallery_app/views/home.dart';
import 'package:travel_gallery_app/views/explore.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Home home;
  late Categories categories;
  late Explore explore;
  late Chat chat;
  late Widget currentPage;

  @override
  void initState() {
    home = Home();
    explore = Explore();
    categories = Categories();
    chat = Chat();
    pages = [home, explore, categories, chat];
    currentPage = Home();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 248, 246, 246),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed, // use this when you have more than 3 items
        selectedItemColor: Color.fromARGB(255, 48, 145, 201), // Seçili öğe rengi burada belirlenir
        unselectedItemColor: Colors.grey, // Seçili olmayan öğelerin rengi burada belirlenir
      ),
      body: pages[currentTabIndex],
    );
  }
}
