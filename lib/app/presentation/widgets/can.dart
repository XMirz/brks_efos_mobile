import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Can extends ConsumerWidget {
  const Can({
    required this.can,
    required this.onCannot,
    required this.onCan,
    super.key,
    // this.requiredPermission,
    // this.requiredPermissions,
  });

  // final Permission? requiredPermission;
  // final List<Permission>? requiredPermissions;
  final bool can;
  final Widget onCannot;
  final Widget onCan;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return can ? onCan : onCannot;
  }
}
