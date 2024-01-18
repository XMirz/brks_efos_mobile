import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OurNavBar extends ConsumerWidget {
  const OurNavBar({
    required this.index,
    required this.onTap,
    super.key,
  });

  final ValueChanged<int> onTap;
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = index;
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: pageIndex,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.highlightSecondary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.home,
              size: 32,
            ),
            label: 'Beran,size: 32,da',
            activeIcon: HeroIcon(
              HeroIcons.home,
              size: 32,
              style: HeroIconStyle.solid,
            ),
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.clipboardDocumentList,
              size: 32,
            ),
            label: 'Transaksi',
            activeIcon: HeroIcon(
              HeroIcons.clipboardDocumentList,
              size: 32,
              style: HeroIconStyle.solid,
            ),
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.bell,
              size: 32,
            ),
            label: 'Notifikasi',
            activeIcon: HeroIcon(
              HeroIcons.bell,
              size: 32,
              style: HeroIconStyle.solid,
            ),
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.user,
              size: 32,
            ),
            label: 'Profil',
            activeIcon: HeroIcon(
              HeroIcons.user,
              size: 32,
              style: HeroIconStyle.solid,
            ),
          ),
        ],
      ),
    );
  }
}
