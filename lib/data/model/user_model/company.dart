import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  factory Company({
    Address? address,
    String? department,
    String? name,
    String? title,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}