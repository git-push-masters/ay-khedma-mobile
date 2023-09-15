import 'package:equatable/equatable.dart';

class Body extends Equatable {
  final int? id;
  final String? name;
  final String? icon;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Body({
    this.id,
    this.name,
    this.icon,
    this.createdAt,
    this.updatedAt,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        id: json['id'] as int?,
        name: json['name'] as String?,
        icon: json['icon'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [id, name, icon, createdAt, updatedAt];
}
