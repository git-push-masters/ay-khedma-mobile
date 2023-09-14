import 'package:equatable/equatable.dart';

import 'body.dart';

class Sections extends Equatable {
  final bool? success;
  final int? status;
  final List<dynamic>? msgs;
  final int? count;
  final List<Body>? body;

  const Sections({
    this.success,
    this.status,
    this.msgs,
    this.count,
    this.body,
  });

  factory Sections.fromJson(Map<String, dynamic> json) => Sections(
        success: json['success'] as bool?,
        status: json['status'] as int?,
        msgs: json['msgs'] as List<dynamic>?,
        count: json['count'] as int?,
        body: (json['body'] as List<dynamic>?)
            ?.map((e) => Body.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'status': status,
        'msgs': msgs,
        'count': count,
        'body': body?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [success, status, msgs, count, body];
}
