import 'package:dota_app_for_swirf_labs/common/router/routes.dart';
import 'package:dota_app_for_swirf_labs/view/detail_hero/detail_hero.dart';
import 'package:dota_app_for_swirf_labs/view/screen/home/home.dart';
import 'package:dota_app_for_swirf_labs/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(
      RouteSettings routeSettings, ScrollBehavior scrollBehavior) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        return ScrollConfiguration(
          behavior: scrollBehavior,
          child: _getScreen(
            settings: routeSettings,
          ),
        );
      },
    );
  }

  static Widget _getScreen({required RouteSettings settings}) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return const Splash();
      case Routes.home:
        return const Home();
      case Routes.detailHeroes:
        HeroDetailArgument? argument;
        if (args is HeroDetailArgument) argument = args;
        return HeroDetail(argument: argument!);
      default:
        return Container();
    }
  }
}
