import 'package:flutter/material.dart';
import 'package:travel_gallery_app/admin/admin_login.dart';
import 'package:travel_gallery_app/views/bottom_nav.dart';
import 'package:travel_gallery_app/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel Gallery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 170, 165, 179)),
          useMaterial3: true,
        ),
        home: const BottomNav());
  }
}
