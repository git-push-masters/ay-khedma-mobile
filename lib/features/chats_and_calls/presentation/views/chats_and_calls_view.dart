import 'package:flutter/material.dart';
import 'widgets/chats_and_calls_view_body.dart';

class ChatsAndCallsView extends StatelessWidget {
  const ChatsAndCallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatsAndCallsViewBody(),
    );
  }
}