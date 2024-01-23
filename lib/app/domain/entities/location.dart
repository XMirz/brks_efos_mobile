import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class OurLocation with _$OurLocation {
  const factory OurLocation({
    required String longitude,
    required String latitude,
    String? locationName,
  }) = _OurLocation;

  const OurLocation._();
  factory OurLocation.fromJson(Map<String, dynamic> json) =>
      _$OurLocationFromJson(json);
}
