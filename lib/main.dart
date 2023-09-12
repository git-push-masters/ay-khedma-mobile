import 'package:ay_khedma/core/helper/helper_services/service_locator.dart';
import 'package:ay_khedma/features/home/presentation/views/home_view.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo_implement.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/register_cubit/register_cubit.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'core/helper/auth_contain.dart';
import 'core/helper/test_api.dart';
import 'core/utils/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'features/profile/presentation/views/profile_view.dart';
import 'features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';

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
        // routerConfig: AppRouter.router,
        home: const AuthContainer(),
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
