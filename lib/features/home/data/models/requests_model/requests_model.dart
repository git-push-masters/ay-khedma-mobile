import 'package:equatable/equatable.dart';

import 'body.dart';

class RequestsModel extends Equatable {
  final bool? success;
  final int? status;
  final List<dynamic>? msgs;
  final int? count;
  final int? page;
  final List<Body>? body;

  const RequestsModel({
    this.success,
    this.status,
    this.msgs,
    this.count,
    this.page,
    this.body,
  });

  factory RequestsModel.fromJson(Map<String, dynamic> json) => RequestsModel(
        success: json['success'] as bool?,
        status: json['status'] as int?,
        msgs: json['msgs'] as List<dynamic>?,
        count: json['count'] as int?,
        page: json['page'] as int?,
        body: (json['body'] as List<dynamic>?)
            ?.map((e) => Body.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'status': status,
        'msgs': msgs,
        'count': count,
        'page': page,
        'body': body?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [success, status, msgs, count, page, body];
}
