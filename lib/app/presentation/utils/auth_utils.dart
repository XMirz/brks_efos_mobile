import 'package:efosm/core/constants/integer.dart';

bool isSupervisorAO(int roleId) {
  return AppInteger.idsRoleSupervisorAO.contains(roleId);
}

bool isAO(int roleId) {
  return AppInteger.idsRoleAO.contains(roleId);
}

bool canAuthorizeAll(List<String> userAuths, List<String> requiredAuths) {
  for (final element in requiredAuths) {
    if (!userAuths.contains(element)) {
      return false;
    }
  }
  return true;
}

bool canAuthorize(List<String> userAuths, String requiredAuth) {
  if (!userAuths.contains(requiredAuth)) {
    return false;
  }
  return true;
}
