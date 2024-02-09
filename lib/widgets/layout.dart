import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/helpers/responsivness.dart';
import 'package:flutter_web_dashboard1/widgets/Large_screen.dart';
import 'package:flutter_web_dashboard1/widgets/medium_screen.dart';
import 'package:flutter_web_dashboard1/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: const SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
