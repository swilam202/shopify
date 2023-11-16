import 'package:hhhhhhhh/features/cart%20feature/domain/entites/address.dart';

class AddressModel extends Address {
  AddressModel({
    required super.city,
    required super.region,
    required super.details,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      city: json['city'],
      region: json['region'],
      details: json['details'],
    );
  }
}
