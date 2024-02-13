import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/helpers/responsivness.dart';
import 'package:flutter_web_dashboard1/widgets/horizontal_ment_item.dart';
import 'package:flutter_web_dashboard1/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final dynamic onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else {
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    }
  }
}
