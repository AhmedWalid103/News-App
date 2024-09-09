import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/routes/pageRouteNames.dart';
import 'package:news_app/modules/layout/layout_view.dart';
import 'package:news_app/modules/splash/splash_view.dart';

class PageRoutes
{
 static Route<dynamic>? onGenerateRoute(RouteSettings settings)
  {
    switch(settings.name)
        {
      case Pageroutenames.splash:
        {
          return MaterialPageRoute(
              builder:  (context) => SplashView() ,
              settings: settings);
        }
      case Pageroutenames.layout:
        {
          return MaterialPageRoute(
              builder:  (context) => LayoutView() ,
              settings: settings);
        }
      default : {
        return MaterialPageRoute(
            builder:  (context) => SplashView(),
            settings: settings);
      }
    }
  }
}