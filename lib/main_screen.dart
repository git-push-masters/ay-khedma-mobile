import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/features/Appointments/presentation/views/widgets/sectiones/appointments_view.dart';
import 'package:ay_khedma/features/chats_and_calls/presentation/views/chat_view.dart';
import 'package:ay_khedma/features/home/presentation/views/home_view.dart';
import 'package:ay_khedma/features/notifications/presentation/views/widgets/notifications_view.dart';
import 'package:ay_khedma/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'core/helper/global_var.dart';
import 'features/home/presentation/view_models/cubit/fetchrequests_cubit.dart';
import 'features/home/presentation/view_models/cubit/sections_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.loginToken});
final String? loginToken;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   final _bottomController = PersistentTabController();

  List<Widget> _buildScreens(){
    return [
      HomeView(loginToken: widget.loginToken,),
      const NotificationsView(),
      const AppointmentsView(),
      const ChatView(),
      const ProfileView()
    ];
  }

  List <PersistentBottomNavBarItem> _navBarsItems(){
    return [
          PersistentBottomNavBarItem(
            icon:const Icon(CupertinoIcons.home),
            activeColorPrimary: AppColors.kPrimaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
            icon:const Icon(Icons.notifications),
            activeColorPrimary: AppColors.kPrimaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
            icon:const Icon(CupertinoIcons.calendar_today),
            activeColorPrimary: AppColors.kPrimaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
            icon:const Icon(CupertinoIcons.chat_bubble),
            activeColorPrimary: AppColors.kPrimaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
            icon:const Icon(CupertinoIcons.person_circle_fill),
            activeColorPrimary: AppColors.kPrimaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
    ];
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SectionsCubit>(context).fetchSections();
    BlocProvider.of<FetchrequestsCubit>(context).fetchRequests(token: widget.loginToken?? token!);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: PersistentTabView(
        context,
        controller: _bottomController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties:const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation:const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    ),
    );
  }
}