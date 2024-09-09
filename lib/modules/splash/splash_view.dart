import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart  ';
import 'package:news_app/core/routes/pageRouteNames.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
   Timer( const Duration(seconds: 2)
     ,() {
         Navigator.pushReplacementNamed(context, Pageroutenames.layout);
       });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/images/splash.png"));
  }
}
