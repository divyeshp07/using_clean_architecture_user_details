import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinates.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    String? address,
    String? city,
    Coordinates? coordinates,
    String? postalCode,
    String? state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
