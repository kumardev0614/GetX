import 'package:flutter/material.dart';
import 'package:background_changer/views/homepage.dart';

void main() => runApp(const BgApp());

class BgApp extends StatelessWidget {
  const BgApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Random Background with GetX"),
        ),
        body: HomePage(),
      ),
    );
  }
}
