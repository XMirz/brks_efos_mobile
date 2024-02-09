import 'dart:math';

import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/auth/presentation/providers/landing_provider.dart';
import 'package:efosm/features/auth/presentation/widgets/login_form.dart';
import 'package:efosm/features/auth/presentation/widgets/slider_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingScreen extends HookConsumerWidget {
  const LandingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final pageController = usePageController();
    final pageIndex = ref.watch(onboardIndexProvider);
    final showLoginForm = ref.watch(showLoginFormProvider);
    final formHeight = ref.watch(formHeightProvider(screenHeight));
    log(formHeight);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const IgnorePointer(
            child: AppBarLeft(
              tint: Colors.white,
            ),
          ),
          IgnorePointer(
            ignoring: showLoginForm,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: screenHeight,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                physics: const ClampingScrollPhysics(),
                onPageChanged: (index) {
                  ref
                      .read(onboardIndexProvider.notifier)
                      .update((state) => index);
                },
                children: sliderContent,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicHeight(
              child: AnimatedContainer(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.elliptical(screenWidth / 2, screenWidth / 4),
                    topRight:
                        Radius.elliptical(screenWidth / 2, screenWidth / 4),
                  ),
                  color: AppColor.backgroundPrimary,
                ),
                width: double.maxFinite,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInCubic,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primary,
                      ),
                      child: IconButton(
                        color: Colors.white,
                        iconSize: 32,
                        onPressed: () => ref
                            .read(showLoginFormProvider.notifier)
                            .update((state) => !state),
                        icon: HeroIcon(
                          showLoginForm
                              ? HeroIcons.chevronDown
                              : HeroIcons.chevronUp,
                        ),
                      ),
                    ),
                    spaceY(16),
                    AnimatedOpacity(
                      opacity: showLoginForm ? 0 : 1,
                      duration: const Duration(milliseconds: 200),
                      child: AnimatedSmoothIndicator(
                        activeIndex: pageIndex,
                        count: sliderContent.length,
                        effect: ExpandingDotsEffect(
                          dotColor: AppColor.highlightSecondary,
                          activeDotColor: AppColor.primary,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: showLoginForm ? 1 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: showLoginForm
                          ? const Padding(
                              padding: EdgeInsets.all(32),
                              child: LoginForm(),
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> sliderContent = const [
  SliderContent(
    imageSrc: 'assets/svg/landing_1.svg',
    title: 'EFOS Mobile',
    subtitle: 'Pengajuan pembiayaan lebih mudah',
  ),
  SliderContent(
    imageSrc: 'assets/svg/landing_2.svg',
    title: 'EFOS Mobile',
    subtitle: 'Dapat dilakukan dimana saja',
  ),
  SliderContent(
    imageSrc: 'assets/svg/landing_3.svg',
    title: 'EFOS Mobile',
    subtitle: 'Kesempatan portabel lebih luas',
  ),
];
