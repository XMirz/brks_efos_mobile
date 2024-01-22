import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_field.freezed.dart';

@freezed
class FileField with _$FileField {
  const factory FileField({
    required String showValue,
    File? value,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = $_FileField;
}
