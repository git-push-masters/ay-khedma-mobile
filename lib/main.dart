import 'package:ay_khedma/core/helper/helper_services/service_locator.dart';
import 'package:ay_khedma/features/home/presentation/views/all_services_view.dart';
import 'package:ay_khedma/features/home/presentation/views/home_view.dart';
import 'package:ay_khedma/features/splash/presentation/views/splash_view.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo_implement.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/register_cubit/register_cubit.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/helper/auth_contain.dart';
import 'core/helper/test_api.dart';
import 'core/utils/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/Appointments/presentation/views/widgets/sectiones/appointments_view.dart';
import 'features/chats_and_calls/presentation/views/chat_view.dart';
import 'features/chats_and_calls/presentation/views/widgets/chat_view_body.dart';
import 'features/notifications/presentation/views/widgets/notifications_view.dart';
import 'features/profile/presentation/views/profile_view.dart';
import 'features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'features/user_authentication/presentation/views/sign_up_view.dart';

void main() {
  setupServiceLocator();
  runApp(const AyKhedmaApp());
}

class AyKhedmaApp extends StatelessWidget {
  const AyKhedmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(
            getIt.get<UserAuthRepoImplement>(),
          ),
        ),
        BlocProvider(
            create: (context) =>
                LoginCubit(getIt.get<UserAuthRepoImplement>())),
      ],
      child: GetMaterialApp(
        locale: const Locale("ar", "AE"),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        //routerConfig: AppRouter.router,
        home: const HomeView(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Kohinoor Arabic',
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Kohinoor Arabic'),
        ),
      ),
    );
  }
}
