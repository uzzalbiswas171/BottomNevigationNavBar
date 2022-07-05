import 'package:flutter/material.dart';


import 'home_page.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    debugShowCheckedModeBanner: false,
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: Example()));


