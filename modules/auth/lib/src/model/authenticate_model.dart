import 'package:auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_model.freezed.dart';
part 'authenticate_model.g.dart';

@freezed
abstract class Authenticate with _$Authenticate {
  Authenticate._();
  factory Authenticate({
    final String? apiKey,
    String? classificationId,
    String? moquiSessionToken,
    String? ownerPartyId,
    CompanyUser? companyUser,
    Company? company,
    User? user,
    Stats? stats,
  }) = _Authenticate;

  factory Authenticate.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateFromJson(json['authenticate'] ?? json);

  @override
  String toString() => "CompName: ${company?.name}, Usr: ${user?.lastName}";
}
