// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Field {
  String get value => throw _privateConstructorUsedError;
  String get showValue => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {String value,
      String showValue,
      String errorMessage,
      bool isValid,
      bool isRequired});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? showValue = null,
    Object? errorMessage = null,
    Object? isValid = null,
    Object? isRequired = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$$_FieldImplCopyWith(
          _$$_FieldImpl value, $Res Function(_$$_FieldImpl) then) =
      __$$$_FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      String showValue,
      String errorMessage,
      bool isValid,
      bool isRequired});
}

/// @nodoc
class __$$$_FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$$_FieldImpl>
    implements _$$$_FieldImplCopyWith<$Res> {
  __$$$_FieldImplCopyWithImpl(
      _$$_FieldImpl _value, $Res Function(_$$_FieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? showValue = null,
    Object? errorMessage = null,
    Object? isValid = null,
    Object? isRequired = null,
  }) {
    return _then(_$$_FieldImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$_FieldImpl implements $_Field {
  const _$$_FieldImpl(
      {required this.value,
      this.showValue = '',
      this.errorMessage = '',
      this.isValid = false,
      this.isRequired = false});

  @override
  final String value;
  @override
  @JsonKey()
  final String showValue;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isRequired;

  @override
  String toString() {
    return 'Field(value: $value, showValue: $showValue, errorMessage: $errorMessage, isValid: $isValid, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_FieldImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.showValue, showValue) ||
                other.showValue == showValue) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, showValue, errorMessage, isValid, isRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_FieldImplCopyWith<_$$_FieldImpl> get copyWith =>
      __$$$_FieldImplCopyWithImpl<_$$_FieldImpl>(this, _$identity);
}

abstract class $_Field implements Field {
  const factory $_Field(
      {required final String value,
      final String showValue,
      final String errorMessage,
      final bool isValid,
      final bool isRequired}) = _$$_FieldImpl;

  @override
  String get value;
  @override
  String get showValue;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  bool get isRequired;
  @override
  @JsonKey(ignore: true)
  _$$$_FieldImplCopyWith<_$$_FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DropDownField {
  String get value => throw _privateConstructorUsedError;
  String get showValue => throw _privateConstructorUsedError;
  String get actualValue => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropDownFieldCopyWith<DropDownField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownFieldCopyWith<$Res> {
  factory $DropDownFieldCopyWith(
          DropDownField value, $Res Function(DropDownField) then) =
      _$DropDownFieldCopyWithImpl<$Res, DropDownField>;
  @useResult
  $Res call(
      {String value,
      String showValue,
      String actualValue,
      String errorMessage,
      bool isValid});
}

/// @nodoc
class _$DropDownFieldCopyWithImpl<$Res, $Val extends DropDownField>
    implements $DropDownFieldCopyWith<$Res> {
  _$DropDownFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? showValue = null,
    Object? actualValue = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      actualValue: null == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_DropDownFieldImplCopyWith<$Res>
    implements $DropDownFieldCopyWith<$Res> {
  factory _$$$_DropDownFieldImplCopyWith(_$$_DropDownFieldImpl value,
          $Res Function(_$$_DropDownFieldImpl) then) =
      __$$$_DropDownFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      String showValue,
      String actualValue,
      String errorMessage,
      bool isValid});
}

/// @nodoc
class __$$$_DropDownFieldImplCopyWithImpl<$Res>
    extends _$DropDownFieldCopyWithImpl<$Res, _$$_DropDownFieldImpl>
    implements _$$$_DropDownFieldImplCopyWith<$Res> {
  __$$$_DropDownFieldImplCopyWithImpl(
      _$$_DropDownFieldImpl _value, $Res Function(_$$_DropDownFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? showValue = null,
    Object? actualValue = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_$$_DropDownFieldImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      actualValue: null == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$_DropDownFieldImpl implements $_DropDownField {
  const _$$_DropDownFieldImpl(
      {required this.value,
      required this.showValue,
      required this.actualValue,
      this.errorMessage = '',
      this.isValid = false});

  @override
  final String value;
  @override
  final String showValue;
  @override
  final String actualValue;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'DropDownField(value: $value, showValue: $showValue, actualValue: $actualValue, errorMessage: $errorMessage, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_DropDownFieldImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.showValue, showValue) ||
                other.showValue == showValue) &&
            (identical(other.actualValue, actualValue) ||
                other.actualValue == actualValue) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, showValue, actualValue, errorMessage, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_DropDownFieldImplCopyWith<_$$_DropDownFieldImpl> get copyWith =>
      __$$$_DropDownFieldImplCopyWithImpl<_$$_DropDownFieldImpl>(
          this, _$identity);
}

abstract class $_DropDownField implements DropDownField {
  const factory $_DropDownField(
      {required final String value,
      required final String showValue,
      required final String actualValue,
      final String errorMessage,
      final bool isValid}) = _$$_DropDownFieldImpl;

  @override
  String get value;
  @override
  String get showValue;
  @override
  String get actualValue;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$$_DropDownFieldImplCopyWith<_$$_DropDownFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
