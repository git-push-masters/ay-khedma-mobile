import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'components/messages_view.dart';

class ChatBottomView extends StatelessWidget {
  const ChatBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context,index){
      return       const Messagesview(time: ' ١٢:٣٤', subtitle: 'معادنا الساعة كام ياكبير؟', title: 'أبو احمد',);

    });

      
      
   
  }
}