import 'package:equatable/equatable.dart';

class Body extends Equatable {
  final int? id;
  final String? name;
  final String? icon;


  const Body({
    this.id,
    this.name,
    this.icon,

  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        id: json['id'] as int?,
        name: json['name'] as String?,
        icon: json['icon'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };

  @override
  List<Object?> get props => [id, name, icon,];
}
