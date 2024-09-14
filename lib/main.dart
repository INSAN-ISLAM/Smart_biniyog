import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:smart_biniyog/App/modules/screens/profile/views/profile_page.dart';
import 'package:smart_biniyog/App/modules/screens/project_details/views/project_details_screen.dart';
import 'package:smart_biniyog/App/practice.dart';
import 'package:smart_biniyog/App/routes/route_destinations.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

import 'App/modules/screens/project_details/views/project_details_page.dart';
//comment
void main() {
  // runApp(const MyApp());


  runApp(

    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart_biniyog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: RouteDestinations.pages,
     // initialRoute: RouteNames.dashBoard,

     home: ProjectDetailScreen(),       //
      //        DashBoardScreen(),
    );
  }
}
