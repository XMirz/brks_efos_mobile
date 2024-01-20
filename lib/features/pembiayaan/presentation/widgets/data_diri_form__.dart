// import 'package:efosm/app/domain/entities/dropdown_item.dart';
// import 'package:efosm/app/presentation/utils/widget_utils.dart';
// import 'package:efosm/app/presentation/widgets/date_field.dart';
// import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
// import 'package:efosm/app/presentation/widgets/primary_button.dart';
// import 'package:efosm/app/presentation/widgets/text_field.dart';
// import 'package:efosm/core/constants/colors.dart';
// import 'package:efosm/features/auth/presentation/providers/login_provider.dart';
// import 'package:efosm/l10n/l10n.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class DataDiriForm extends ConsumerWidget {
//   const DataDiriForm({super.key});
//   // final TextEditingController _nik = TextEditingController(text: '');
//   // final TextEditingController _nama = TextEditingController(text: '');
//   // final TextEditingController _alamat = TextEditingController(text: '');
//   // final TextEditingController _tempatLahir = TextEditingController(text: '');
//   // final TextEditingController _tanggalLahir = TextEditingController(text: '');
//   // final TextEditingController _statusPernikahan =
//   //     TextEditingController(text: '');
//   // final TextEditingController _jumlahTanggungan =
//   //     TextEditingController(text: '');
//   // final TextEditingController _kewajiban = TextEditingController(text: '');
//   // final TextEditingController _biayaOperasional =
//   //     TextEditingController(text: '');
//   // final TextEditingController _biayaRumahTangga =
//   //     TextEditingController(text: '');
//   // final TextEditingController _statusTempatTinggal =
//   //     TextEditingController(text: '');
//   // final TextEditingController _hubunganPerbankan =
//   //     TextEditingController(text: '');

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final formState = ref.watch(userLoginFormProvider);
//     final showError = ref.watch(showErrorTextProvider);

//     return Theme(
//       data: ThemeData.fallback(),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           OurDropDownField(
//             items: dummyDropdown,
//             label: context.l10n.nik,
//             hint: context.l10n.nik,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.nik,
//             hint: context.l10n.nik,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.nama,
//             hint: context.l10n.nama,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.alamat,
//             hint: context.l10n.alamat,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           // Container(
//           //   width: double.infinity,
//           //   child: Row(
//           //     mainAxisSize: MainAxisSize.max,
//           //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //     children: [
//           OurTextField(
//             label: context.l10n.tempatLahir,
//             hint: context.l10n.tempatLahir,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(8),
//           OurDateField(
//             controller: ,
//             label: context.l10n.tanggalLahir,
//             hint: context.l10n.tanggalLahir,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           //     ],
//           //   ),
//           // ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.statusPernikahan,
//             hint: context.l10n.statusPernikahan,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.jumlahTanggungan,
//             hint: context.l10n.jumlahTanggungan,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//           OurTextField(
//             label: context.l10n.kewajiban,
//             hint: context.l10n.kewajiban,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           OurTextField(
//             label: context.l10n.biayaOperasional,
//             hint: context.l10n.biayaOperasional,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           OurTextField(
//             label: context.l10n.biayaRumahTangga,
//             hint: context.l10n.biayaRumahTangga,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           OurTextField(
//             label: context.l10n.statusTempatTinggal,
//             hint: context.l10n.statusTempatTinggal,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           OurTextField(
//             label: context.l10n.hubunganPerbankan,
//             hint: context.l10n.hubunganPerbankan,
//             onChanged: (value) =>
//                 ref.read(userLoginFormProvider.notifier).setPassword(value),
//           ),
//           spaceY(4),
//         ],
//       ),
//     );
//   }
// }

// List<DropDownItem> dummyDropdown = const [
//   DropDownItem(value: '1', label: 'Kristeen'),
//   DropDownItem(value: '2', label: 'Islam'),
//   DropDownItem(value: '3', label: 'Yahudi'),
//   DropDownItem(value: '4', label: 'Konghucu'),
//   DropDownItem(value: '5', label: 'Shinto'),
// ];
