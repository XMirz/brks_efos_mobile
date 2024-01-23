import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/widgets/text_value.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pasangan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class PasanganItem extends StatelessWidget {
  const PasanganItem(
      {required this.pasangan, super.key, required this.onDissmissed});

  final PasanganFormState pasangan;
  final VoidCallback onDissmissed;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(pasangan.hashCode.toString()),
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
            TextValue(title: l10n.nik, value: pasangan.nik.value),
            TextValue(title: l10n.nama, value: pasangan.nama.value),
            TextValue(
              title: l10n.statusPekerjaan,
              value: pasangan.penghasilan.showValue,
            ),
            TextValue(
              title: l10n.gajiAmprah,
              value: toRupiahString(
                pasangan.gajiAmprah.value,
              ),
            ),
            TextValue(
              title: l10n.tunjangan,
              value: toRupiahString(
                pasangan.tunjangan.value,
              ),
            ),
            TextValue(
              title: l10n.potongan,
              value: toRupiahString(
                pasangan.potongan.value,
              ),
            ),
            TextValue(
              title: l10n.gajiBersih,
              value: toRupiahString(
                pasangan.gajiBersih.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
