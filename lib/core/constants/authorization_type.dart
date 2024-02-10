enum AuthorizationType {
  biometric('BIOMETRIK'),
  account('AKUN'),
  single('SINGLE'),
  double('DOUBLE');

  const AuthorizationType(this.typeName);
  final String typeName;
}

AuthorizationType getAuthorizationType(String authType) {
  if (authType == AuthorizationType.biometric.typeName) {
    return AuthorizationType.biometric;
  } else if (authType == AuthorizationType.account.typeName) {
    return AuthorizationType.account;
  } else if (authType == AuthorizationType.single.typeName) {
    return AuthorizationType.single;
  } else {
    return AuthorizationType.double;
  }
}
