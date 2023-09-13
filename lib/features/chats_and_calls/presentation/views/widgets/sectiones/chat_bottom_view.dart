import 'package:flutter/material.dart';
import 'components/messages_view.dart';

class ChatBottomView extends StatelessWidget {
  const ChatBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const[

      Messagesview(time: 'أبو احمد', subtitle: 'معادنا الساعة كام ياكبير؟', title: '١٢:٣٤',),
      Messagesview(time: 'أبو احمد', subtitle: 'معادنا الساعة كام ياكبير؟', title: '١٢:٣٤',),
      Messagesview(time: 'أبو احمد', subtitle: 'معادنا الساعة كام ياكبير؟', title: '١٢:٣٤',),
      Messagesview(time: 'أبو احمد', subtitle: 'معادنا الساعة كام ياكبير؟', title: '١٢:٣٤',),
      
    ],);
  }
}