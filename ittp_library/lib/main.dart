import 'package:flutter/material.dart';
import 'package:ittp_library/home.dart';
import 'package:ittp_library/repo_home.dart';
import 'package:ittp_library/room_reservation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/repository': (context) => const RepoHomePage(),
        '/reservation': (context) => const RoomReservation(),
      },
    );
  }
}
