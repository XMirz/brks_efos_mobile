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
    @Default(false) bool showError,
  }) = $_Field;

  factory Field.empty() => const Field(value: '');
}

// @freezed
// class DropDownField with _$DropDownField {
//   const factory DropDownField({
//     required String value,
//     required String showValue,
//     required String actualValue,
//     @Default('') String errorMessage,
//     @Default(false) bool isValid,
//   }) = $_DropDownField;
// }
