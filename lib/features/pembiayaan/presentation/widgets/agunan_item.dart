import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_value.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class AgunanItem extends StatelessWidget {
  const AgunanItem({
    required this.agunan,
    required this.onDissmissed,
    super.key,
  });

  final AgunanFormState agunan;
  final VoidCallback onDissmissed;
  @override
  Widget build(BuildContext context) {
    final isJaminan = agunan.isJaminan.value == AppString.isJaminanValue;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Dismissible(
        key: Key(agunan.hashCode.toString()),
        background: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const HeroIcon(
            HeroIcons.trash,
            color: AppColor.error,
          ),
        ),
        secondaryBackground: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const HeroIcon(
            HeroIcons.trash,
            color: AppColor.error,
          ),
        ),
        onDismissed: (direction) {
          onDissmissed();
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColor.highlight,
            ),
            // border:
          ),
          child: Column(
            children: [
              if (isJaminan)
                TextValue(title: l10n.jenisJaminan, value: l10n.jaminan),
              if (!isJaminan)
                TextValue(title: l10n.jenisAgunan, value: agunan.jenis.value),
              if (!isJaminan)
                TextValue(
                  title: l10n.deskripsiAgunan,
                  value: agunan.deskripsi.value,
                ),
              if (isJaminan)
                TextValue(
                  title: l10n.deskripsi(''),
                  values: [
                    Text(
                      agunan.deskripsi.value,
                      style: AppTextStyle.subtitleMedium.copyWith(
                        color: AppColor.textPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (agunan.deskripsi2.value.isNotEmpty)
                      Text(
                        agunan.deskripsi2.value,
                        style: AppTextStyle.subtitleMedium.copyWith(
                          color: AppColor.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    if (agunan.deskripsi3.value.isNotEmpty)
                      Text(
                        agunan.deskripsi3.value,
                        style: AppTextStyle.subtitleMedium.copyWith(
                          color: AppColor.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    if (agunan.deskripsi4.value.isNotEmpty)
                      Text(
                        agunan.deskripsi4.value,
                        style: AppTextStyle.subtitleMedium.copyWith(
                          color: AppColor.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    if (agunan.deskripsi5.value.isNotEmpty)
                      Text(
                        agunan.deskripsi5.value,
                        style: AppTextStyle.subtitleMedium.copyWith(
                          color: AppColor.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
              if (!isJaminan)
                TextValue(
                  title: l10n.lokasi,
                  value:
                      '${agunan.alamat.showValue}\n${agunan.kelurahan.showValue}, ${agunan.kecamatan.showValue}, ${agunan.kabupaten.showValue}, ${agunan.provinsi.showValue}',
                ),
              if (agunan.image.value != null &&
                  agunan.image.value!.existsSync())
                Align(
                  alignment: Alignment.centerRight,
                  child: PrimaryButton(
                    radius: 8,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    size: const Size(double.minPositive, 36),
                    text: l10n.see,
                    backgroundColor: AppColor.accent,
                    textStyle: AppTextStyle.bodyMedium
                        .copyWith(color: AppColor.textPrimaryInverse),
                    onPressed: () {
                      showGeneralDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.black.withOpacity(0.4),
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return SizedBox(
                            width: double.infinity,
                            child: Image.file(
                              agunan.image.value!,
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
