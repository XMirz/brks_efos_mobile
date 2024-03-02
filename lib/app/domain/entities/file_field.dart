import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_field.freezed.dart';

@freezed
class FileField with _$FileField {
  const factory FileField({
    File? value,
    String? showValue,
    String? errorMessage,
    String? calculatedValue,
    @Default(false) bool isValid,
    @Default(true) bool isRequired,
    @Default(false) bool showError,
  }) = $_FileField;
}
