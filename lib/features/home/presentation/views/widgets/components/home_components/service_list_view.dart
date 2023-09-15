import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../../core/helper/widgets/custom_snackbar.dart';
import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../view_models/cubit/sections_cubit.dart';

class ServiceListView extends StatelessWidget {
  const ServiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionsCubit, SectionsState>
    (builder: (context, state)
    {
      if(state is SectionsSuccess)
      {
       return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 100,
        width: Get.width,
        child:const ServiceListBody()
      ),
    );
        
      }
      else if(state is SectionsFailure)
      {
        customSnackBar(context, state.errMessage);
      }
      return const Center(child: CircularProgressIndicator(color: AppColors.kPrimaryColor,),);
      
    });
  }
}


class ServiceListBody extends StatefulWidget {
  const ServiceListBody({super.key});

  @override
  State<ServiceListBody> createState() => _ServiceListBodyState();
}

class _ServiceListBodyState extends State<ServiceListBody> {
  int current = -1;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child:Row(
              children: List.generate(10,(index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  current = index;
                });
              },
              child: Transform.translate(
                offset: Offset(0.0, current == index ? -20.0 : 0.0),
                child:
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      height:  50,
                      width:  50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: current == index
                              ? AppColors.kSecondPrimaryColor
                              : AppColors.kListViewItemColor),
                      child: Image.asset(
                        AssetsData.serviceIte,
                      ),
                    ),
                    
              ),
            );
          })), )
          ],
           
        );
  }
}

