import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/routes/app_routes.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/widgets/custom_button.dart';
import 'package:e_commerce/features/onboarding/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnboardingPageView(
                pageController: _pageController,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 2,
              effect: const ExpandingDotsEffect(
                dotColor: AppColors.lightSecondaryColor,
                activeDotColor: AppColors.primaryColor,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 4,
              ),
            ),
            const SizedBox(height: 24),
            Visibility(
              visible: _currentPage == 1,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomButton(
                  onPressed: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context).pushReplacementNamed(AppRoutes.login);
                  },
                  text: "ابدأ الآن",
                ),
              ),
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
