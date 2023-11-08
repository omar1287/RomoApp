import 'package:bookly_app/features/Splash/Presentation/View/Widget/splashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      body: SplashViewBody(),
    );
  }
}
