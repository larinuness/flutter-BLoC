
import 'package:flutter/material.dart';
import 'components/theme.dart';
import 'screens/name.dart';


void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bytebankTheme,
      home: NameContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
