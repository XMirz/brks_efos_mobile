import 'dart:convert';
import 'package:crypto/crypto.dart';

class AppString {
  // static const baseUrl = 'http://172.100.200.46:8041';
  // static const baseUrlLogin = 'http://172.100.200.46:8049';
  // static const baseUrl = 'http://192.168.1.5:8041';
  // static const baseUrlLogin = 'http://192.168.1.5:8049';
  static const baseUrl = 'http://202.152.22.233:8041';
  static const baseUrlLogin = 'http://202.152.22.233:8049';
  // static const baseUrl = 'http://172.100.201.10:8041';
  // static const baseUrlLogin = 'http://172.100.201.10:8049';
  // static const token = '';

  static const isJaminanValue = '1';
  static const isMarriedValue = 'M';

  static final encKey = sha256.convert(utf8.encode('enc_key')).toString();
  static final hiveAuthBox = sha256.convert(utf8.encode('auth_box')).toString();
  static final hiveUserKey = sha256.convert(utf8.encode('user')).toString();
  static final deviceId = sha256.convert(utf8.encode('device_id')).toString();
  static final akwoakowako =
      sha256.convert(utf8.encode('akwoakowako')).toString();
}

enum ProductCategory {
  konsumtif('1'),
  produktif('2'),
  komersil('3');

  const ProductCategory(this.typeName);
  final String typeName;
}
