import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_styles.dart';
import 'package:fruits_market/core/utils/assets.dart';
import 'package:fruits_market/features/on_baording/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller,
    required this.currentPage,
  });

  final PageController controller;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        PageViewItem(
          isVisiable: currentPage == 0,
          image: Assets.imagesImage1,
          backgroundImage: Assets.imagesBG1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ', style: TextStyles.bold23),
              Text(
                'HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          isVisiable: false,
          image: Assets.imagesImage2,
          backgroundImage: Assets.imagesBG2,
          title: const Text('ابحث وتسوق', style: TextStyles.bold23),
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
