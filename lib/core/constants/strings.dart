// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:crypto/crypto.dart';

class AppString {
  // PROD
  static const baseUrl = 'https://pembiayaan-api.brksyariah.co.id/api/efosmobile'; // PROD
  static const baseUrlLogin = 'https://pembiayaan-api.brksyariah.co.id/api/efosmobile'; // PROD

  // DEV
  // static const baseUrl = 'http://202.152.22.233:8040';
  // static const baseUrlLogin = 'http://202.152.22.233:8049';
  // // DEV
  // static const baseUrl = 'http://192.168.66.246:8049';
  // static const baseUrlLogin = 'http://192.168.66.246:8049';

  static const isAgunanValue = '0';
  static const isJaminanValue = '1';
  static const existValue = 'Ada';
  static const isMarriedValue = 'M';

  static final encKey = sha256.convert(utf8.encode('enc_key')).toString();
  static final hiveAuthBox = sha256.convert(utf8.encode('auth_box')).toString();
  static final hiveUserKey = sha256.convert(utf8.encode('user')).toString();
  static final deviceId = sha256.convert(utf8.encode('device_id')).toString();
  static final akwoakowako = sha256.convert(utf8.encode('akwoakowako')).toString();
}

enum ProductCategory {
  konsumtif('1'),
  produktif('2'),
  komersil('3');

  const ProductCategory(this.typeName);
  final String typeName;
}

enum StatsCategory {
  Rejected,
  Processing,
  Done,
  Total,
}
