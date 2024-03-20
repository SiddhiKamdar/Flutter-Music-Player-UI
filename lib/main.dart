import 'package:flutter/material.dart';
import 'package:music_player/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Now_Playing(imageUrl: 'https://c.saavncdn.com/936/Elemental-Unknown-2023-20230615054107-500x500.jpg',
      //     songName: 'Steal the Show',
      //     artist: 'Lauv'),
      home:  SplashScreen(),
    );
  }
}