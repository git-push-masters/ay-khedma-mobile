import 'package:ay_khedma/features/home/presentation/views/widgets/components/home_components/required_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/title_right.dart';
import '../../../../../../../core/helper/widgets/custom_circular_indecator.dart';
import '../../../../view_models/cubit/fetchrequests_cubit.dart';

class OfferedServices extends StatelessWidget {
  const OfferedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRight(
          titleinfo: 'طالبي خدمات السباكة',
        ),
       BlocBuilder<FetchrequestsCubit, FetchrequestsState>(
        builder: (context, state)
       {
        if(state is FetchrequestsSuccess)
         {
          return SizedBox(
          height: Get.height * 1 / 3,
          width: Get.width,
          child: ListView.builder(
            itemCount: state.requestsModel.length,
            itemBuilder: (context, index) {
            return  RequiredService(requestsModel: state.requestsModel[index],);
          }),
        );
         }
         else if(state is FetchrequestsFailure)
         {
           return SizedBox(
          height: Get.height * 1 / 3,
          width: Get.width,
          child: Center(child: Text(state.errMessage),),
        );
         }
         else
         {
          return const CustomCircularIndecator();
         }
       })
      ],
    );
  }
}
