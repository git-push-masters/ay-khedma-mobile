import 'package:equatable/equatable.dart';

class Body extends Equatable {
  final int id;
  final String name;
  final String phone;
  final String? avatar;
  final double? locationLat;
  final double? locationLong;
  final dynamic sectionId;
  final String? token;

  const Body({
    required this.id,
    required this.name,
    required this.phone,
    this.avatar,
    this.locationLat,
    this.locationLong,
    this.sectionId,
    this.token,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        id: json['id'] as int,
        name: json['name'] as String,
        phone: json['phone'] as String,
        avatar: json['avatar'] as String?,
        locationLat: (json['locationLat'] as num?)?.toDouble(),
        locationLong: (json['locationLong'] as num?)?.toDouble(),
        sectionId: json['sectionId'] as dynamic,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'avatar': avatar,
        'locationLat': locationLat,
        'locationLong': locationLong,
        'sectionId': sectionId,
        'token': token,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      phone,
      avatar,
      locationLat,
      locationLong,
      sectionId,
      token,
    ];
  }
}
