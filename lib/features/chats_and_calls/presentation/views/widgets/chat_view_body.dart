import 'package:ay_khedma/features/chats_and_calls/presentation/views/widgets/sectiones/chat_header.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
     ChatHeader()
    ],);
  }
}
