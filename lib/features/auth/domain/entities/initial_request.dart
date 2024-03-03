import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_request.freezed.dart';
part 'initial_request.g.dart';

@freezed
class InitialRequest with _$InitialRequest {
  const factory InitialRequest({
    @Default('') @JsonKey(name: 'deviceId') String? deviceId,
    @Default('') @JsonKey(name: 'deviceName') String? deviceName,
    @Default('') @JsonKey(name: 'packageName') String? packageName,
    @Default('') @JsonKey(name: 'version') String? version,
    @Default('') @JsonKey(name: 'versionCode') String? versionCode,
  }) = _InitialRequest;
  const InitialRequest._();

  factory InitialRequest.fromJson(Map<String, dynamic> json) => _$InitialRequestFromJson(json);
}
