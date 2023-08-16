import 'package:flutter/material.dart';
import 'package:ui_ux_design/constants/strings.dart';
import 'package:ui_ux_design/screens/contact_us_screen.dart';
import 'package:ui_ux_design/screens/cotact_us_two.dart';
import 'package:ui_ux_design/screens/gallery_screen.dart';
import 'package:ui_ux_design/screens/home_screen.dart';
import 'package:ui_ux_design/screens/main_screen.dart';
import 'package:ui_ux_design/screens/news_screen.dart';

class AppRouter {

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
     
      case mainScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => MainScreen());

      case homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());

      case newsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => NewsScreen());

      case galleryScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => GalleryScreen());

      case contactUsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => ContactUsScreen());

      case contactUsTwo:
        return MaterialPageRoute(
            builder: (BuildContext context) => ContactUsTwo());

    }
  }
}