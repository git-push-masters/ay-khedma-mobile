import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../core/helper/header_user_information.dart';
import '../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../home/presentation/views/widgets/components/home_components/home_search_widget.dart';
import 'components/chat_search_widget.dart';
import 'components/custom_par_chat_view.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
       
        
        CustomParChatView(),
         Padding(
           padding: EdgeInsets.only(top: 20),
           child: HeaderUserInformation(
            titleinfo: "الرسائل والمكالمات",
                 ),
         ),
         ChatSearchWidget()
      ],
    );
  }
}
