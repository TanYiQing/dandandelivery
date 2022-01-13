import 'package:dandandelivery/middleware/routeauth.dart';
import 'package:dandandelivery/view/carscreen/carscreen.dart';
import 'package:dandandelivery/view/datingscreen/datingscreen.dart';
import 'package:dandandelivery/view/foodscreen/foodscreen.dart';
import 'package:dandandelivery/view/foodscreen/foodscreenbindings.dart';
import 'package:dandandelivery/view/homescreen/homescreen.dart';
import 'package:dandandelivery/view/languagescreen.dart';
import 'package:dandandelivery/view/loginscreen/loginscreen.dart';
import 'package:dandandelivery/view/moviescreen/moviescreen.dart';
import 'package:dandandelivery/view/splashscreen/binding.dart';
import 'package:dandandelivery/view/splashscreen/splashscreen.dart';
import 'package:dandandelivery/view/unknownscreen/unknownscreen.dart';
import 'package:dandandelivery/widget/bottomnavibar/bottomnavibar.dart';
import 'package:dandandelivery/widget/bottomnavibar/bottomnavibarbinding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final initialRoute = GetPage(
      name: '/splash',
      binding: SplashScreenBinding(),
      page: () => Splashscreen());

  static final List<GetPage> routes = [
    GetPage(
        name: '/splash',
        binding: SplashScreenBinding(),
        page: () => Splashscreen()),
    GetPage(
        name: '/bottombar',
        binding: BottomNaviBarBinding(),
        page: () => BottomNaviBar()),
    GetPage(
        name: '/home',
        //binding: SplashScreenBinding(),
        page: () => HomeScreen()),
    GetPage(
        name: '/car',
        //binding: BottomNaviBarBinding(),
        page: () => CarScreen(),
        middlewares: [RouthAuthMiddleware()]),
    GetPage(
        name: '/food',
        binding: FoodScreenBindings(),
        page: () => FoodScreen(),
        middlewares: [RouthAuthMiddleware()]),
    GetPage(
        name: '/dating',
        //binding: BottomNaviBarBinding(),
        page: () => DatingScreen(),
        middlewares: [RouthAuthMiddleware()]),
    GetPage(
        name: '/movie',
        //binding: BottomNaviBarBinding(),
        page: () => MovieScreen(),
        middlewares: [RouthAuthMiddleware()]),
    GetPage(
        name: '/language',
        //binding: BottomNaviBarBinding(),
        page: () => LanguageScreen()),
    GetPage(
        name: '/login',
        //binding: BottomNaviBarBinding(),
        page: () => LoginScreen()),
  ];

  static final unknownRoute =
      GetPage(name: '/unknown', page: () => UnknownScreen());
}
