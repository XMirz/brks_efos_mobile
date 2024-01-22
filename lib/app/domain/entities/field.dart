import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';

@freezed
class Field with _$Field {
  const factory Field({
    required String value,
    required String showValue,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = $_Field;
}

@freezed
class DropDownField with _$DropDownField {
  const factory DropDownField({
    required String value,
    required String showValue,
    required String actualValue,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = $_DropDownField;
}
