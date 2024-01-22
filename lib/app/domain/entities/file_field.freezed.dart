// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileField {
  String get showValue => throw _privateConstructorUsedError;
  File? get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileFieldCopyWith<FileField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileFieldCopyWith<$Res> {
  factory $FileFieldCopyWith(FileField value, $Res Function(FileField) then) =
      _$FileFieldCopyWithImpl<$Res, FileField>;
  @useResult
  $Res call({String showValue, File? value, String errorMessage, bool isValid});
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
    Object? showValue = null,
    Object? value = freezed,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
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
abstract class _$$$_FileFieldImplCopyWith<$Res>
    implements $FileFieldCopyWith<$Res> {
  factory _$$$_FileFieldImplCopyWith(
          _$$_FileFieldImpl value, $Res Function(_$$_FileFieldImpl) then) =
      __$$$_FileFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String showValue, File? value, String errorMessage, bool isValid});
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
    Object? showValue = null,
    Object? value = freezed,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_$$_FileFieldImpl(
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
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

class _$$_FileFieldImpl implements $_FileField {
  const _$$_FileFieldImpl(
      {required this.showValue,
      this.value,
      this.errorMessage = '',
      this.isValid = false});

  @override
  final String showValue;
  @override
  final File? value;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'FileField(showValue: $showValue, value: $value, errorMessage: $errorMessage, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_FileFieldImpl &&
            (identical(other.showValue, showValue) ||
                other.showValue == showValue) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showValue, value, errorMessage, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_FileFieldImplCopyWith<_$$_FileFieldImpl> get copyWith =>
      __$$$_FileFieldImplCopyWithImpl<_$$_FileFieldImpl>(this, _$identity);
}

abstract class $_FileField implements FileField {
  const factory $_FileField(
      {required final String showValue,
      final File? value,
      final String errorMessage,
      final bool isValid}) = _$$_FileFieldImpl;

  @override
  String get showValue;
  @override
  File? get value;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$$_FileFieldImplCopyWith<_$$_FileFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
