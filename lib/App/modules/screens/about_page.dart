import 'package:flutter/material.dart';

class AboutSreen extends StatefulWidget {
  const AboutSreen({Key? key}) : super(key: key);

  @override
  State<AboutSreen> createState() => _AboutSreenState();
}

class _AboutSreenState extends State<AboutSreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
         style: TextStyle(
          fontSize: 14,
          color: Colors.black.withOpacity(0.7),
        ),
        ),
      ),
    );
  }
}
