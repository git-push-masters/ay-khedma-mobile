import 'package:flutter/material.dart';
import '../../../../../../core/helper/custom_par_view.dart';
import '../../../../../../core/helper/title_right.dart';
import 'components/par_search_widget.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
       
        
        CustomParView(title: "التواصل",),
         Padding(
           padding: EdgeInsets.only(top: 20),
           child: TitleRight(
            titleinfo: "الرسائل والمكالمات",
                 ),
         ),
         ParSearchWidget(title: 'ابحث عن المحادثات',),
         
      ],
    );
  }
}
