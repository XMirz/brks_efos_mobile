import 'package:efosm/core/constants/permissions.dart';

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

bool can(List<String> userPermissions, Permission permission) {
  return userPermissions.contains(permission.name);
}

bool canAll(List<String> userPermissions, List<Permission> permissions) {
  for (final element in permissions) {
    if (!userPermissions.contains(element.name)) {
      return false;
    }
  }
  return true;
}
