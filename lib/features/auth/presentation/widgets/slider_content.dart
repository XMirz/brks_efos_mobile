import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderContent extends StatelessWidget {
  const SliderContent({
    required this.imageSrc,
    required this.title,
    required this.subtitle,
    super.key,
  });
  final String imageSrc;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyle.titleLarge
                .copyWith(color: AppColor.textPrimaryInverse, fontSize: 28),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              subtitle,
              style: AppTextStyle.subtitleLarge
                  .copyWith(color: AppColor.textPrimaryInverse),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.4,
            child: SvgPicture.asset(
              imageSrc,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
