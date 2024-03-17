import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final animateLoadProvider = StateProvider.autoDispose((ref) => true);

class AppBarLeft extends HookConsumerWidget implements PreferredSizeWidget {
  const AppBarLeft({
    super.key,
    this.backgroundColor,
    this.title,
    this.centerTitle,
    this.tint,
    this.height,
  });

  final String? title;
  final Color? backgroundColor;
  final Color? tint;
  final bool? centerTitle;
  final double? height;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.read(animateLoadProvider.notifier).update((state) => false);
    });

    return AnimatedContainer(
      transform: ref.watch(animateLoadProvider) ? (Matrix4.identity()..translate(16)) : Matrix4.identity(),
      duration: const Duration(milliseconds: 400),
      child: AppBar(
        // shape: LinearBorder(),
        centerTitle: centerTitle,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: title != null
            ? Text(
                title.toString(),
                style: AppTextStyle.titleSmall,
              )
            : null,
        backgroundColor: backgroundColor ?? Colors.transparent,
        leadingWidth: 160,
        leading: Container(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            'assets/svg/logo_brks.svg',
            colorFilter: ColorFilter.mode(
              tint ?? Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 56);

  // Widget? _buildLeading(BuildContext context) {
  //   if (showLogo) {
  //     return IconButton(
  //       // padding: EdgeInsets.symmetric(horizontal: 16),
  //       icon: SvgPicture.asset(
  //         'assets/svg/logo_brks.svg',
  //       ),
  //       onPressed: () {},
  //       splashColor: Colors.transparent,
  //       highlightColor: Colors.transparent,
  //     );
  //   } else if (!showBack) {
  //     IconButton(
  //       onPressed: () => context.pop(),
  //       icon: const HeroIcon(
  //         HeroIcons.chevronLeft,
  //         style: HeroIconStyle.mini,
  //       ),
  //       color: Colors.black54,
  //       splashColor: Colors.transparent,
  //       highlightColor: Colors.transparent,
  //     );
  //   }
  //   return null;
  // }
}
