import 'package:e_commerce/core/routes/app_routes.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  final String onboardingBackgroundImage;
  final String onboardingImage;
  final Widget onboardingTitle;
  final String onboardingDescription;
  final bool isVisible;
  const PageViewItem({
    super.key,
    required this.onboardingBackgroundImage,
    required this.onboardingImage,
    required this.onboardingTitle,
    required this.onboardingDescription,
    this.isVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            onboardingBackgroundImage,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Visibility(
                visible: isVisible,
                child: Row(
                  children: [
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.login);
                      },
                      child: Text(
                        "تخط",
                        style:
                            TextStyles.regular13.copyWith(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SvgPicture.asset(onboardingImage),
              const SizedBox(height: 20),
              onboardingTitle,
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  onboardingDescription,
                  textAlign: TextAlign.center,
                  style: TextStyles.semiBold13,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
