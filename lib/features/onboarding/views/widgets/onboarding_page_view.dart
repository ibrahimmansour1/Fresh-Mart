import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/features/onboarding/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController pageController;
  const OnboardingPageView({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          onboardingBackgroundImage: Assets.assetsSvgsOnBoardingBackground1,
          onboardingImage: Assets.assetsSvgsOnBoardingIcon1,
          onboardingTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "مرحبًا بك في ",
                style: TextStyles.bold23,
              ),
              Text(
                "HUB",
                style: TextStyles.bold23
                    .copyWith(color: AppColors.lightSecondaryColor),
              ),
              Text(
                "Friut",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
          onboardingDescription:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          isVisible: true,
        ),
        const PageViewItem(
          onboardingBackgroundImage: Assets.assetsSvgsOnBoardingBackground2,
          onboardingImage: Assets.assetsSvgsOnBoardingIcon2,
          onboardingTitle: Text(
            "ابحث وتسوق",
            style: TextStyles.bold23,
          ),
          onboardingDescription:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          isVisible: false,
        ),
      ],
    );
  }
}
