// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropDownItem _$DropDownItemFromJson(Map<String, dynamic> json) {
  return $_DropDownItem.fromJson(json);
}

/// @nodoc
mixin _$DropDownItem {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool? get enabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropDownItemCopyWith<DropDownItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownItemCopyWith<$Res> {
  factory $DropDownItemCopyWith(
          DropDownItem value, $Res Function(DropDownItem) then) =
      _$DropDownItemCopyWithImpl<$Res, DropDownItem>;
  @useResult
  $Res call({String value, String label, bool? enabled});
}

/// @nodoc
class _$DropDownItemCopyWithImpl<$Res, $Val extends DropDownItem>
    implements $DropDownItemCopyWith<$Res> {
  _$DropDownItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? enabled = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_DropDownItemImplCopyWith<$Res>
    implements $DropDownItemCopyWith<$Res> {
  factory _$$$_DropDownItemImplCopyWith(_$$_DropDownItemImpl value,
          $Res Function(_$$_DropDownItemImpl) then) =
      __$$$_DropDownItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label, bool? enabled});
}

/// @nodoc
class __$$$_DropDownItemImplCopyWithImpl<$Res>
    extends _$DropDownItemCopyWithImpl<$Res, _$$_DropDownItemImpl>
    implements _$$$_DropDownItemImplCopyWith<$Res> {
  __$$$_DropDownItemImplCopyWithImpl(
      _$$_DropDownItemImpl _value, $Res Function(_$$_DropDownItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? enabled = freezed,
  }) {
    return _then(_$$_DropDownItemImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_DropDownItemImpl implements $_DropDownItem {
  const _$$_DropDownItemImpl(
      {required this.value, required this.label, this.enabled});

  factory _$$_DropDownItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_DropDownItemImplFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final bool? enabled;

  @override
  String toString() {
    return 'DropDownItem(value: $value, label: $label, enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_DropDownItemImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_DropDownItemImplCopyWith<_$$_DropDownItemImpl> get copyWith =>
      __$$$_DropDownItemImplCopyWithImpl<_$$_DropDownItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_DropDownItemImplToJson(
      this,
    );
  }
}

abstract class $_DropDownItem implements DropDownItem {
  const factory $_DropDownItem(
      {required final String value,
      required final String label,
      final bool? enabled}) = _$$_DropDownItemImpl;

  factory $_DropDownItem.fromJson(Map<String, dynamic> json) =
      _$$_DropDownItemImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  bool? get enabled;
  @override
  @JsonKey(ignore: true)
  _$$$_DropDownItemImplCopyWith<_$$_DropDownItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
