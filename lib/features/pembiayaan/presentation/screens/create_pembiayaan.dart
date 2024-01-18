import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_stepper/easy_stepper.dart';

class CreatePembiayaanScreen extends HookConsumerWidget {
  const CreatePembiayaanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepIndex = ref.watch(stepIndexProvider);
    return Scaffold(
      appBar: InnerAppBar(
        title: l10n.createPembiayaan,
        onBackPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView(
        children: [
          // Container(
          //   height: 64,
          //   color: AppColor.accent,
          // ),
          // EasyStepper(
          //   activeStep: stepIndex,
          //   activeStepTextColor: Colors.black87,
          //   finishedStepTextColor: Colors.black87,
          //   internalPadding: 0,
          //   showLoadingAnimation: false,
          //   stepRadius: 12,
          //   showStepBorder: false,
          //   steps: [
          //     EasyStep(
          //       customStep: CircleAvatar(
          //         radius: 8,
          //         backgroundColor: Colors.white,
          //         child: CircleAvatar(
          //           radius: 7,
          //           backgroundColor:
          //               stepIndex >= 0 ? Colors.orange : Colors.white,
          //         ),
          //       ),
          //       title: 'Waiting',
          //     ),
          //     EasyStep(
          //       customStep: CircleAvatar(
          //         radius: 8,
          //         backgroundColor: Colors.white,
          //         child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(double.maxFinite),
          //           ),
          //           child: stepIndex == 2
          //               ? const Text(
          //                   '2',
          //                   style: AppTextStyle.titleSmall,
          //                 )
          //               : const Icon(Icons.check),
          //         ),
          //       ),
          //       title: 'Order Received',
          //     ),
          //   ],
          //   onStepReached: (index) => print(stepIndex),
          // ),
          Container(
            height: double.minPositive,
            child: Stepper(
              // elevation: 0,
              connectorThickness: 4,
              stepIconBuilder: (stepIndex, stepState) {
                return Container(
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
                    StepState.error => null,
                  },
                );
              },
              type: StepperType.horizontal,
              connectorColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return AppColor.disabled;
                  } else if (states.contains(MaterialState.selected)) {
                    return AppColor.primary;
                  }
                  return AppColor.highlightSecondary;
                },
              ),
              currentStep: stepIndex,
              onStepCancel: () {},
              onStepContinue: () {},
              onStepTapped: (step) {
                print("ANJIR " + step.toString());
                ref.read(stepIndexProvider.notifier).state = step;
              },
              steps: [
                Step(
                  title: spaceY(0),
                  label: Text(
                    l10n.debiturProfile,
                    style: AppTextStyle.caption,
                  ),
                  isActive: stepIndex == 0,
                  state: stepIndex > 0 ? StepState.complete : StepState.indexed,
                  content: Container(
                    color: AppColor.accent,
                    width: double.maxFinite,
                    height: 200,
                  ),
                ),
                Step(
                  title: spaceY(0),
                  isActive: stepIndex == 1,
                  state: stepIndex > 1 ? StepState.complete : StepState.indexed,
                  content: Container(
                    color: AppColor.accent,
                    width: double.maxFinite,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
