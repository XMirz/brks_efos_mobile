import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_item.freezed.dart';
part 'dropdown_item.g.dart';

@freezed
class DropDownItem with _$DropDownItem {
  const factory DropDownItem({
    required String value,
    required String label,
    bool? enabled,
  }) = $_DropDownItem;

  factory DropDownItem.fromJson(Map<String, dynamic> json) =>
      _$DropDownItemFromJson(json);
}
