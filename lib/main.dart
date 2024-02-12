import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/widgets/layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home.dart';

void main() {
  Get.put(MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboad',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
