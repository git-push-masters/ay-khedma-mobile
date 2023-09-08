import 'package:equatable/equatable.dart';
import 'body.dart';

class UserModel extends Equatable {
  final bool success;
  final int status;
  final List<dynamic>? msgs;
  final Body? body;

  const UserModel({required this.success,required this.status, this.msgs, this.body});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        success: json['success'] as bool,
        status: json['status'] as int,
        msgs: json['msgs'] as List<dynamic>?,
        body: json['body'] == null
            ? null
            : Body.fromJson(json['body'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'status': status,
        'msgs': msgs,
        'body': body?.toJson(),
      };

  @override
  List<Object?> get props => [success, status, msgs, body];
}
