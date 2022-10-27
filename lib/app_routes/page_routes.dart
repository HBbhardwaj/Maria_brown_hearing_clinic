

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_routes/routes.dart';
import 'package:maria_brown_hearing_clinic/features/dashboard.dart';
import 'package:maria_brown_hearing_clinic/features/login_screen.dart';
import 'package:maria_brown_hearing_clinic/features/splash_screen.dart';

appRoutes() => [

  ///---- splash screen ---///

  GetPage(
    name: Routes.splashScreen,
    page: () => const SplashScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  ///---- dashboard screen ---///

  GetPage(
    name: Routes.dashboard,
    page: () => Dashboard(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  ///---- login screen ---///

  GetPage(
    name: Routes.loginScreen,
    page: () => LoginScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

];

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    Widget widgetScreen;
    switch (settings.name) {
      case Routes.splashScreen:
        widgetScreen =  SplashScreen();
        break;
      case Routes.loginScreen:
        widgetScreen =  LoginScreen();
        break;
      case Routes.dashboard:
        widgetScreen =  Dashboard();
        break;




      default:

        widgetScreen = const SplashScreen();
    }
    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => widgetScreen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }

/*  static Widget _errorRoute() {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  }*/
}
