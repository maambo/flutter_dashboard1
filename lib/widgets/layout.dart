import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/helpers/responsivness.dart';
import 'package:flutter_web_dashboard1/widgets/Large_screen.dart';
import 'package:flutter_web_dashboard1/widgets/medium_screen.dart';
import 'package:flutter_web_dashboard1/widgets/small_screen.dart';
import 'package:flutter_web_dashboard1/widgets/top_nave.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: const SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
