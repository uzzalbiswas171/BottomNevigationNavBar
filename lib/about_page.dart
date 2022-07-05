import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutPage"),
        actions: [
          Icon(Icons.menu),
        ],
      ),
      body: Container(
        width: 400,
        height: 400,
        child:CircleAvatar(
          backgroundImage: AssetImage("im/b.jpg"),
          child:  CircularProgressIndicator(
            backgroundColor: Colors.red,
            color: Colors.blue,
          ),
        ),


      ),
    );
  }
}
