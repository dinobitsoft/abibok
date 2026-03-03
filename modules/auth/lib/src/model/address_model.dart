import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class Address with _$Address {
  Address._();
  factory Address({
    String? addressId, // contactMechId in backend
    String? address1,
    String? address2,
    String? postalCode,
    String? city,
    String? province,
    String? provinceId,
    String? country,
    String? countryId,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json['address'] ?? json);

  @override
  String toString() =>
      "$address1,${address2 ?? ''},$province,$postalCode $city,$country";
}
