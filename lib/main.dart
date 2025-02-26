import 'package:flutter/material.dart';
import 'package:news_app/core/routes/pageRouteNames.dart';
import 'package:news_app/core/routes/pageRoutes.dart';
import 'package:news_app/data/fetchingData.dart';
import 'package:news_app/modules/theme/application_theme_manager.dart';

void main() {
  runApp(const MyApp());
 // Fetchingdata.fetchSourceData("sports");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'news',
      debugShowCheckedModeBanner: false,
      theme:ApplicationThemeManager.lightTheme ,
      initialRoute: Pageroutenames.splash,
      onGenerateRoute:PageRoutes.onGenerateRoute,
    );
  }
}
