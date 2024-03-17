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
  String? get value => throw _privateConstructorUsedError;
  String? get showValue => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get calculatedValue => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {String? value,
      String? showValue,
      String? errorMessage,
      String? calculatedValue,
      bool isValid,
      bool isRequired,
      bool disabled,
      bool showError});
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
    Object? value = freezed,
    Object? showValue = freezed,
    Object? errorMessage = freezed,
    Object? calculatedValue = freezed,
    Object? isValid = null,
    Object? isRequired = null,
    Object? disabled = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      showValue: freezed == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedValue: freezed == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
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
      {String? value,
      String? showValue,
      String? errorMessage,
      String? calculatedValue,
      bool isValid,
      bool isRequired,
      bool disabled,
      bool showError});
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
    Object? value = freezed,
    Object? showValue = freezed,
    Object? errorMessage = freezed,
    Object? calculatedValue = freezed,
    Object? isValid = null,
    Object? isRequired = null,
    Object? disabled = null,
    Object? showError = null,
  }) {
    return _then(_$$_FieldImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      showValue: freezed == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedValue: freezed == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$_FieldImpl implements $_Field {
  const _$$_FieldImpl(
      {this.value,
      this.showValue,
      this.errorMessage,
      this.calculatedValue,
      this.isValid = false,
      this.isRequired = true,
      this.disabled = false,
      this.showError = false});

  @override
  final String? value;
  @override
  final String? showValue;
  @override
  final String? errorMessage;
  @override
  final String? calculatedValue;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final bool disabled;
  @override
  @JsonKey()
  final bool showError;

  @override
  String toString() {
    return 'Field(value: $value, showValue: $showValue, errorMessage: $errorMessage, calculatedValue: $calculatedValue, isValid: $isValid, isRequired: $isRequired, disabled: $disabled, showError: $showError)';
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
            (identical(other.calculatedValue, calculatedValue) ||
                other.calculatedValue == calculatedValue) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, showValue, errorMessage,
      calculatedValue, isValid, isRequired, disabled, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_FieldImplCopyWith<_$$_FieldImpl> get copyWith =>
      __$$$_FieldImplCopyWithImpl<_$$_FieldImpl>(this, _$identity);
}

abstract class $_Field implements Field {
  const factory $_Field(
      {final String? value,
      final String? showValue,
      final String? errorMessage,
      final String? calculatedValue,
      final bool isValid,
      final bool isRequired,
      final bool disabled,
      final bool showError}) = _$$_FieldImpl;

  @override
  String? get value;
  @override
  String? get showValue;
  @override
  String? get errorMessage;
  @override
  String? get calculatedValue;
  @override
  bool get isValid;
  @override
  bool get isRequired;
  @override
  bool get disabled;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$$$_FieldImplCopyWith<_$$_FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileField {
  File? get value => throw _privateConstructorUsedError;
  String? get showValue => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get calculatedValue => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileFieldCopyWith<FileField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileFieldCopyWith<$Res> {
  factory $FileFieldCopyWith(FileField value, $Res Function(FileField) then) =
      _$FileFieldCopyWithImpl<$Res, FileField>;
  @useResult
  $Res call(
      {File? value,
      String? showValue,
      String? errorMessage,
      String? calculatedValue,
      bool isValid,
      bool isRequired,
      bool disabled,
      bool showError});
}

/// @nodoc
class _$FileFieldCopyWithImpl<$Res, $Val extends FileField>
    implements $FileFieldCopyWith<$Res> {
  _$FileFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? showValue = freezed,
    Object? errorMessage = freezed,
    Object? calculatedValue = freezed,
    Object? isValid = null,
    Object? isRequired = null,
    Object? disabled = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
      showValue: freezed == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedValue: freezed == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_FileFieldImplCopyWith<$Res>
    implements $FileFieldCopyWith<$Res> {
  factory _$$$_FileFieldImplCopyWith(
          _$$_FileFieldImpl value, $Res Function(_$$_FileFieldImpl) then) =
      __$$$_FileFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? value,
      String? showValue,
      String? errorMessage,
      String? calculatedValue,
      bool isValid,
      bool isRequired,
      bool disabled,
      bool showError});
}

/// @nodoc
class __$$$_FileFieldImplCopyWithImpl<$Res>
    extends _$FileFieldCopyWithImpl<$Res, _$$_FileFieldImpl>
    implements _$$$_FileFieldImplCopyWith<$Res> {
  __$$$_FileFieldImplCopyWithImpl(
      _$$_FileFieldImpl _value, $Res Function(_$$_FileFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? showValue = freezed,
    Object? errorMessage = freezed,
    Object? calculatedValue = freezed,
    Object? isValid = null,
    Object? isRequired = null,
    Object? disabled = null,
    Object? showError = null,
  }) {
    return _then(_$$_FileFieldImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
      showValue: freezed == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedValue: freezed == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$_FileFieldImpl implements $_FileField {
  const _$$_FileFieldImpl(
      {this.value,
      this.showValue,
      this.errorMessage,
      this.calculatedValue,
      this.isValid = false,
      this.isRequired = true,
      this.disabled = false,
      this.showError = false});

  @override
  final File? value;
  @override
  final String? showValue;
  @override
  final String? errorMessage;
  @override
  final String? calculatedValue;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final bool disabled;
  @override
  @JsonKey()
  final bool showError;

  @override
  String toString() {
    return 'FileField(value: $value, showValue: $showValue, errorMessage: $errorMessage, calculatedValue: $calculatedValue, isValid: $isValid, isRequired: $isRequired, disabled: $disabled, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_FileFieldImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.showValue, showValue) ||
                other.showValue == showValue) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.calculatedValue, calculatedValue) ||
                other.calculatedValue == calculatedValue) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, showValue, errorMessage,
      calculatedValue, isValid, isRequired, disabled, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_FileFieldImplCopyWith<_$$_FileFieldImpl> get copyWith =>
      __$$$_FileFieldImplCopyWithImpl<_$$_FileFieldImpl>(this, _$identity);
}

abstract class $_FileField implements FileField {
  const factory $_FileField(
      {final File? value,
      final String? showValue,
      final String? errorMessage,
      final String? calculatedValue,
      final bool isValid,
      final bool isRequired,
      final bool disabled,
      final bool showError}) = _$$_FileFieldImpl;

  @override
  File? get value;
  @override
  String? get showValue;
  @override
  String? get errorMessage;
  @override
  String? get calculatedValue;
  @override
  bool get isValid;
  @override
  bool get isRequired;
  @override
  bool get disabled;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$$$_FileFieldImplCopyWith<_$$_FileFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
