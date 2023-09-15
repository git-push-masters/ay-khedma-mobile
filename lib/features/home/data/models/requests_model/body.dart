import 'package:equatable/equatable.dart';

class Body extends Equatable {
  final int? id;
  final String? title;
  final String? address;
  final String? description;
  final String? thumbnailsText;
  final int? minPrice;
  final int? maxPrice;
  final String? durationRange;
  final double? locationLat;
  final double? locationLong;
  final int? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? userId;
  final int? sectionId;
  final List<dynamic>? thumbnails;

  const Body({
    this.id,
    this.title,
    this.address,
    this.description,
    this.thumbnailsText,
    this.minPrice,
    this.maxPrice,
    this.durationRange,
    this.locationLat,
    this.locationLong,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.sectionId,
    this.thumbnails,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        id: json['id'] as int?,
        title: json['title'] as String?,
        address: json['address'] as String?,
        description: json['description'] as String?,
        thumbnailsText: json['thumbnailsText'] as String?,
        minPrice: json['minPrice'] as int?,
        maxPrice: json['maxPrice'] as int?,
        durationRange: json['durationRange'] as String?,
        locationLat: (json['locationLat'] as num?)?.toDouble(),
        locationLong: (json['locationLong'] as num?)?.toDouble(),
        status: json['status'] as int?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        userId: json['userId'] as int?,
        sectionId: json['sectionId'] as int?,
        thumbnails: json['thumbnails'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'address': address,
        'description': description,
        'thumbnailsText': thumbnailsText,
        'minPrice': minPrice,
        'maxPrice': maxPrice,
        'durationRange': durationRange,
        'locationLat': locationLat,
        'locationLong': locationLong,
        'status': status,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'userId': userId,
        'sectionId': sectionId,
        'thumbnails': thumbnails,
      };

  @override
  List<Object?> get props {
    return [
      id,
      title,
      address,
      description,
      thumbnailsText,
      minPrice,
      maxPrice,
      durationRange,
      locationLat,
      locationLong,
      status,
      createdAt,
      updatedAt,
      userId,
      sectionId,
      thumbnails,
    ];
  }
}
