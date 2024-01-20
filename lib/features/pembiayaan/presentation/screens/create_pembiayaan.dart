import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/data_diri_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreatePembiayaanScreen extends HookConsumerWidget {
  const CreatePembiayaanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final stepIndex = ref.watch(stepIndexProvider);
    final completeIndex = ref.watch(completeIndexProvider);
    final pageController = usePageController();
    void onStepChange(int index) {
      pageController.jumpTo(stepIndex + 1);
      ref.read(stepIndexProvider.notifier).update((state) => index);
      if (index > completeIndex) {
        ref.read(completeIndexProvider.notifier).update((state) => index);
      }
    }

    return Scaffold(
      appBar: InnerAppBar(
        title: l10n.createPembiayaan,
        onBackPressed: () {
          context.pop();
        },
      ),
      // body: Column(
      //   // mainAxisSize: MainAxisSize.min,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(
      //       height: 80,
      //       width: screenWidth,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         mainAxisSize: MainAxisSize.min,
      //         children: steps
      //             .asMap()
      //             .entries
      //             .map(
      //               (entry) => Expanded(
      //                 child: Align(
      //                   child: TimelineTile(
      //                     isFirst: entry.key == 0,
      //                     isLast: entry.key == steps.length - 1,
      //                     alignment: TimelineAlign.start,
      //                     axis: TimelineAxis.horizontal,
      //                     afterLineStyle: LineStyle(
      //                       color: entry.key < stepIndex
      //                           ? AppColor.primary
      //                           : AppColor.highlightSecondary,
      //                     ),
      //                     beforeLineStyle: LineStyle(
      //                       color: entry.key < stepIndex + 1
      //                           ? AppColor.primary
      //                           : AppColor.highlightSecondary,
      //                     ),
      //                     indicatorStyle: IndicatorStyle(
      //                       padding: const EdgeInsets.only(top: 8),
      //                       width: (screenWidth / 4) - 48,
      //                       height: 48,
      //                       indicator: InkWell(
      //                         splashColor: Colors.transparent,
      //                         highlightColor: Colors.transparent,
      //                         onTap: () => onStepChange(entry.key),
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Container(
      //                               padding: EdgeInsets.only(top: 4),
      //                               width: 24,
      //                               // height: 72,
      //                               alignment: Alignment.center,
      //                               decoration: BoxDecoration(
      //                                 shape: BoxShape.circle,
      //                                 color: entry.key <= completeIndex
      //                                     ? AppColor.primary
      //                                     : AppColor.highlightSecondary,
      //                               ),
      //                               child: entry.key < completeIndex
      //                                   ? const Icon(
      //                                       Icons.check_sharp,
      //                                       color: AppColor.textPrimaryInverse,
      //                                     )
      //                                   : Text(
      //                                       entry.key.toString(),
      //                                       style: AppTextStyle.titleSmall
      //                                           .copyWith(
      //                                               color: AppColor
      //                                                   .textPrimaryInverse),
      //                                     ),
      //                             ),
      //                             Text(
      //                               entry.value.title,
      //                               textAlign: TextAlign.center,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: AppTextStyle.bodySmall,
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             )
      //             .toList(),
      //       ),
      //     ),
      //     spaceY(16),
      //     Expanded(
      //       child: PageView(
      //         physics: const NeverScrollableScrollPhysics(),
      //         controller: pageController,
      //         onPageChanged: (index) {
      //           ref.read(stepIndexProvider.notifier).update((state) => index);
      //           ref
      //               .read(completeIndexProvider.notifier)
      //               .update((state) => index);
      //         },
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      body: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColor.backgroundPrimary,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
        ),
        child: SafeArea(
          // child: ListView(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 24),
          //       child: OurStepIndicator(activeIndex: stepIndex),
          //     ),
          //   ],
          // ),
          // child: Container(
          //   color: AppColor.accent,
          //   height: 200,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       TimelineTile(
          //         axis: TimelineAxis.horizontal,
          //         alignment: TimelineAlign.center,
          //         isFirst: stepIndex == 0,
          //         isLast: stepIndex == 5 - 1,
          //         endChild: Container(
          //           constraints: const BoxConstraints(
          //             minHeight: 120,
          //           ),
          //           color: Colors.lightGreenAccent,
          //         ),
          //         startChild: Container(
          //           color: Colors.amberAccent,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          child: Stepper(
            elevation: 0,
            connectorThickness: 4,
            stepIconBuilder: (stepIndex, stepState) {
              return Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                child: switch (stepState) {
                  StepState.complete => const Icon(
                      Icons.check_sharp,
                      color: AppColor.textPrimaryInverse,
                    ),
                  StepState.indexed => Text(
                      stepIndex.toString(),
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                    ),
                  StepState.editing => null,
                  StepState.disabled => null,
                  StepState.error => Text(
                      stepIndex.toString(),
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.error),
                    ),
                },
              );
            },
            type: StepperType.horizontal,
            connectorColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return AppColor.disabled;
                } else if (states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.pressed)) {
                  return AppColor.primary;
                }
                return AppColor.highlightSecondary;
              },
            ),
            currentStep: stepIndex,
            onStepCancel: () {},
            onStepContinue: () {
              // Validate
            },
            onStepTapped: (step) {
              ref.read(stepIndexProvider.notifier).state = step;
            },
            controlsBuilder: (context, details) {
              return Row(
                mainAxisAlignment: stepIndex == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (stepIndex > 0)
                    PrimaryButton(
                      backgroundColor: AppColor.accent,
                      text: 'Sebelumnya',
                      onPressed: details.onStepCancel!,
                      size: const Size(double.minPositive, 42),
                      textStyle: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                    ),
                  if (stepIndex < 4)
                    PrimaryButton(
                      text: 'Lanjutkan',
                      onPressed: details.onStepContinue!,
                      size: const Size(double.minPositive, 42),
                      textStyle: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                    ),
                  if (stepIndex == 4)
                    PrimaryButton(
                      text: 'Kirim',
                      onPressed: () {},
                      size: const Size(double.minPositive, 42),
                      textStyle: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                    ),
                ],
              );
            },
            steps: [
              Step(
                title: const Text(''),
                label: Text(
                  l10n.debiturProfile,
                  style: AppTextStyle.bodySmall,
                ),
                isActive: stepIndex == 0,
                state: stepIndex > 0 ? StepState.complete : StepState.indexed,
                content: DataDiriForm(),
              ),
              // Step(
              //   title: const Text(''),
              //   label: Text(
              //     l10n.pekerjaan,
              //     style: AppTextStyle.caption,
              //   ),
              //   isActive: stepIndex == 1,
              //   state: stepIndex > 1 ? StepState.complete : StepState.indexed,
              //   content: DataDiriForm(),
              // ),
              // Step(
              //     title: const Text(''),
              //     label: Text(
              //       l10n.pasangan,
              //       style: AppTextStyle.caption,
              //     ),
              //     isActive: stepIndex == 2,
              //     state: stepIndex > 2 ? StepState.complete : StepState.indexed,
              //     content: DataDiriForm()),
              // Step(
              //     title: const Text(''),
              //     label: Text(
              //       l10n.produk,
              //       style: AppTextStyle.caption,
              //     ),
              //     isActive: stepIndex == 3,
              //     state: stepIndex > 3 ? StepState.complete : StepState.indexed,
              //     content: DataDiriForm()),
              // Step(
              //     title: const Text(''),
              //     label: Text(
              //       l10n.agunan,
              //       style: AppTextStyle.caption,
              //     ),
              //     isActive: stepIndex == 4,
              //     state: stepIndex > 4 ? StepState.complete : StepState.indexed,
              //     content: DataDiriForm()),
            ],
          ),
        ),
      ),
    );
  }
}



// class Step {
//   Step({required this.title, required Widget this.content});

//   final String title;
//   final Widget content;
// }

// List<Step> steps = [
//   Step(title: l10n.dataDiri, content: DataDiriForm()),
//   Step(title: l10n.pekerjaan, content: DataDiriForm()),
//   Step(title: l10n.pasangan, content: DataDiriForm()),
//   Step(title: l10n.pembiayaan, content: DataDiriForm()),
//   Step(title: l10n.agunan, content: DataDiriForm()),
// ];
