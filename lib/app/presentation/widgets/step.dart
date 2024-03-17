import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/painters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timelines/timelines.dart';

class OurStep {
  OurStep({
    required this.icon,
    required this.title,
    required this.content,
  });

  final HeroIcons icon;
  final String title;
  final Widget content;
}

class OurStepPage extends ConsumerWidget {
  const OurStepPage({
    required this.currentIndex,
    required this.steps,
    required this.onPrev,
    required this.onNext,
    this.finishText,
    this.previousText,
    this.nextText,
    this.showIndicator,
    super.key,
  });

  final int currentIndex;
  final List<OurStep> steps;
  final void Function(int index, int stepCount) onPrev;
  final void Function(int index, int stepCount) onNext;
  final String? finishText;
  final String? previousText;
  final String? Function(int index, int stepCount)? nextText;
  final bool? showIndicator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLastStep = currentIndex == steps.length - 1;
    return Column(
      children: [
        if (showIndicator ?? true)
          Container(
            constraints: BoxConstraints.tight(const Size(double.infinity, 100)),
            child: Timeline.tileBuilder(
              theme: TimelineThemeData(
                connectorTheme: const ConnectorThemeData(
                  space: 20,
                  thickness: 4,
                ),
                direction: Axis.horizontal,
              ),
              builder: TimelineTileBuilder.connected(
                itemCount: steps.length,
                connectionDirection: ConnectionDirection.before,
                itemExtentBuilder: (_, index) => screenWidth / steps.length,
                oppositeContentsBuilder: (context, index) {
                  return HeroIcon(
                    steps[index].icon,
                    style: HeroIconStyle.mini,
                    color: getStepIconColor(index, currentIndex),
                  );
                },
                contentsBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      steps[index].title,
                      style: AppTextStyle.bodyExtraSmall.copyWith(
                        color: index <= currentIndex ? AppColor.success : null,
                      ),
                    ),
                  );
                },
                indicatorBuilder: (_, index) {
                  if (index <= currentIndex) {
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Stack(
                        children: [
                          CustomPaint(
                            size: const Size(24, 24),
                            painter: BezierPainter(
                              color: getStepBackgroundColor(index, currentIndex),
                              drawStart: index > 0,
                              drawEnd: index < currentIndex,
                            ),
                          ),
                          DotIndicator(
                            size: 24,
                            color: getStepBackgroundColor(index, currentIndex),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              alignment: Alignment.center,
                              child: HeroIcon(
                                HeroIcons.check,
                                color: index < currentIndex ? Colors.white : AppColor.success,
                                style: HeroIconStyle.mini,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      alignment: Alignment.center,
                      width: 24,
                      height: 24,
                      child: Stack(
                        children: [
                          CustomPaint(
                            size: const Size(24, 24),
                            painter: BezierPainter(
                              color: AppColor.highlightSecondary,
                              drawEnd: index < steps.length - 1,
                            ),
                          ),
                          OutlinedDotIndicator(
                            size: 24,
                            borderWidth: 4,
                            color: AppColor.highlightSecondary,
                          ),
                        ],
                      ),
                    );
                  }
                },
                connectorBuilder: (context, index, type) {
                  if (index < currentIndex) {
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const SolidLineConnector(
                        color: AppColor.success,
                      ),
                    );
                  } else if (index == currentIndex) {
                    const prevColor = AppColor.success;
                    const color = AppColor.successHighlight;
                    List<Color> gradientColors;
                    if (type == ConnectorType.start) {
                      gradientColors = [Color.lerp(prevColor, color, 0.5)!, color];
                    } else {
                      gradientColors = [prevColor, Color.lerp(prevColor, color, 0.5)!];
                    }
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: DecoratedLineConnector(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColors,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: SolidLineConnector(
                        color: AppColor.highlightSecondary,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: AppInteger.horizontalPagePadding),
            child: IndexedStack(
              index: currentIndex,
              children: steps.map((e) => e.content).toList(),
            ),
          ),
        ),
        KeyboardVisibilityBuilder(
          builder: (context, isVisible) {
            if (isVisible) return const SizedBox.shrink();
            return Container(
              color: AppColor.primary,
              padding: EdgeInsets.symmetric(
                horizontal: AppInteger.horizontalPagePadding,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (currentIndex != 0)
                    OurTextButton(
                      text: previousText ?? l10n.back,
                      color: Colors.white,
                      padding: EdgeInsets.zero,
                      onPressed: () => onPrev(currentIndex, steps.length),
                    ),
                  Expanded(child: Container()),
                  OurTextButton(
                    text: nextText?.call(currentIndex, steps.length) ??
                        (isLastStep ? finishText ?? l10n.send : l10n.next),
                    color: Colors.white,
                    padding: EdgeInsets.zero,
                    onPressed: () => onNext(currentIndex, steps.length),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
