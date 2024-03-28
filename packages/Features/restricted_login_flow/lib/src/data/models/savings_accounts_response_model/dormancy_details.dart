import 'package:freezed_annotation/freezed_annotation.dart';

part 'dormancy_details.freezed.dart';
part 'dormancy_details.g.dart';

@freezed
class DormancyDetails with _$DormancyDetails {
  //* Ignoring private constructor from test coverage
  // coverage:ignore-line
  const DormancyDetails._();

  const factory DormancyDetails({
    double? lastBalance,
  }) = _DormancyDetails;

  // coverage:ignore-start
  //* Ignoring this codeblock because this is code-generated
  factory DormancyDetails.fromJson(Map<String, dynamic> json) =>
      _$DormancyDetailsFromJson(json);
  // coverage:ignore-end
}
