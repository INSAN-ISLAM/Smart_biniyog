import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppLauncherApp extends StatelessWidget {
  // Replace this with the phone number you want to message
  final String phoneNumber = "+880123456789";  // Example phone number

  // Function to open WhatsApp
  void _launchWhatsApp() async {
    String url = "whatsapp://send?phone=$phoneNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error if WhatsApp is not installed
      print("Could not launch WhatsApp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Launch WhatsApp')),
        body: Center(
          child: ElevatedButton(
            onPressed: _launchWhatsApp,  // Trigger WhatsApp on button click
            child: Text('Open WhatsApp'),
          ),
        ),
      ),
    );
  }
}


