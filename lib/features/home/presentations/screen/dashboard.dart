import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarLeft(),
      body: ListView(
        children: [
          Container(),
        ],
      ),
    );
  }
}
