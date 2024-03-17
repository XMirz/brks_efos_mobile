import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';

@freezed
class Field with _$Field {
  const factory Field({
    String? value,
    String? showValue,
    String? errorMessage,
    String? calculatedValue,
    @Default(false) bool isValid,
    @Default(true) bool isRequired,
    @Default(false) bool disabled,
    @Default(false) bool showError,
  }) = $_Field;

  factory Field.empty() => const Field(value: '');
}

@freezed
class FileField with _$FileField {
  const factory FileField({
    File? value,
    String? showValue,
    String? errorMessage,
    String? calculatedValue,
    @Default(false) bool isValid,
    @Default(true) bool isRequired,
    @Default(false) bool disabled,
    @Default(false) bool showError,
  }) = $_FileField;

  factory FileField.empty() => const FileField();
}
