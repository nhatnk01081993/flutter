import 'package:flutter/material.dart';
import 'package:the_flutter/ui/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter',
      home: HomeView(),
    );
  }
}
