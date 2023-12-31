import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/helper/global_var.dart';
import '../../../../../../../../core/utils/colors.dart';
import '../most_used_services.dart';

class AllServicesCenter extends StatelessWidget {
  const AllServicesCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SizedBox(
        height: Get.height * .4,
        width: Get.width,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: mySectionsModel!.body!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: .7,
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return MostUsedServices(
                  title: mySectionsModel!.body![index].name!,
                  image: "$baseUrl${mySectionsModel!.body![index].icon!}");
            }),
      ),
    );

    //Row(

    // children:const[
    //    SizedBox(
    //     height: 133,
    //     width: 108,
    //     child: MostUsedServices(title: " خدمات المنازل",subtitle: "تن با تولید سادگی نامفهومه",cstuomicon: Icons.home,)),
    //     Padding(
    //           padding: const EdgeInsets.only(right: 15),
    //           child: Container(
    //             height: 133,
    //             width: 108,
    //             decoration: BoxDecoration(
    //                 color: AppColors.kSmallContainersColor,
    //                 borderRadius: BorderRadius.circular(26)),
    //             child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //      const Icon(
    //      Icons.home,
    //       size: 50,
    //     ),
    //     const SizedBox(
    //       height: 10,
    //     ),
    //     Text(
    //       "lprp,pr",
    //       style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold),
    //     ),
    //      const Text(
    //       "dwnncmepmcpeopo",
    //       style: TextStyle(fontSize: 10),
    //       maxLines: 2,
    //       textAlign: TextAlign.center,
    //     )
    //   ],
    // ),
    //           ),
    //         )
    //   ],
    //);
  }
}
