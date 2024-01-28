import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/text_widgets.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final animateLoadProvider = StateProvider.autoDispose((ref) => true);

class InnerAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const InnerAppBar({
    required this.title,
    this.borderRadius,
    super.key,
    this.backgroundColor,
    this.centerTitle,
    this.tint,
    this.onBackPressed,
    this.tabs,
    this.height,
  });

  final String title;
  final BorderRadius? borderRadius;
  final double? height;
  final Color? backgroundColor;
  final Color? tint;
  final bool? centerTitle;
  final List<Widget>? tabs;
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.read(animateLoadProvider.notifier).update((state) => false);
    });
    return AnimatedContainer(
      decoration: const BoxDecoration(),
      alignment: Alignment.centerLeft,
      transform: ref.watch(animateLoadProvider)
          ? (Matrix4.identity()..translate(16))
          : Matrix4.identity(),
      duration: const Duration(milliseconds: 400),
      child: AppBar(
        clipBehavior: Clip.hardEdge,
        bottom: tabs != null && tabs!.isNotEmpty
            ? TabBar(
                labelStyle: AppTextStyle.bodyMedium,
                tabs: tabs!,
                labelColor: AppColor.primary,
                unselectedLabelColor: AppColor.highlightSecondary,
                indicatorWeight: 1,
                indicatorSize: TabBarIndicatorSize.tab,
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              const BorderRadius.only(
                bottomLeft: Radius.elliptical(24, 24),
                bottomRight: Radius.elliptical(24, 24),
              ),
        ),
        centerTitle: centerTitle ?? false,
        elevation: 0,
        title: Text(
          title,
          style: AppTextStyle.titleSmall
              .copyWith(color: AppColor.textPrimaryInverse),
        ),
        backgroundColor: backgroundColor ?? AppColor.primary,
        leading: onBackPressed != null
            ? Container(
                padding: const EdgeInsets.only(left: 16),
                child: IconButton(
                  onPressed: onBackPressed,
                  icon: const HeroIcon(HeroIcons.chevronLeft),
                  color: AppColor.textPrimaryInverse,
                ),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 64);
}
