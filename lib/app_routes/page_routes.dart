

import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_routes/routes.dart';
import 'package:maria_brown_hearing_clinic/features/dashboard.dart';
import 'package:maria_brown_hearing_clinic/features/splash_screen.dart';

appRoutes() => [
  GetPage(
    name: Routes.splashScreen,
    page: () => SplashScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: Routes.dashboard,
    page: () => Dashboard(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

];