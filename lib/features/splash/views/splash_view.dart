import 'package:e_commerce/core/routes/app_routes.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool kIsOnBoardingViewSeen =
        Prefs.getBool('kIsOnBoardingViewSeen') ?? false;
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.onBoarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Image.asset(
            Assets.assetsImagesSplash,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
