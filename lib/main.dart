import 'package:ay_khedma/core/helper/helper_services/service_locator.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo_implement.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/Appointments/presentation/views/widgets/sectiones/appointments_view.dart';
import 'features/chats_and_calls/presentation/views/chat_view.dart';
import 'features/home/data/models/repos/home_repo_implement.dart';
import 'features/home/presentation/view_models/cubit/fetchrequests_cubit.dart';
import 'features/home/presentation/view_models/cubit/request_cubit.dart';
import 'features/home/presentation/view_models/cubit/sections_cubit.dart';
import 'features/home/presentation/views/all_services_view.dart';
import 'features/home/presentation/views/details_service_view.dart';
import 'features/map/presentation/views/map_view.dart';
import 'features/map/presentation/views/widgets/map_view_body.dart';
import 'features/notifications/presentation/views/widgets/notifications_view.dart';
import 'features/profile/presentation/views/profile_view.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'features/user_authentication/presentation/views/choose_avatar_view.dart';
import 'features/user_authentication/presentation/views/find_location_view.dart';

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
        BlocProvider(
            create: (context) => SectionsCubit(getIt.get<HomeRepoImplement>())),
        BlocProvider(
            create: (context) => RequestCubit(getIt.get<HomeRepoImplement>())),
        BlocProvider(
            create: (context) => FetchrequestsCubit(getIt.get<HomeRepoImplement>())),    
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
        home: const SplashView(),
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
/**import 'dart:collection';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => _MapViewBodyState();
}

class _MapViewBodyState extends State<MapViewBody> {
  var myMarkers = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition://31.038121, 31.368673
          const CameraPosition(target: LatLng(31.038121, 31.368673), zoom: 14),
      onMapCreated: (GoogleMapController googleMapController) {
        setState(() {
          myMarkers.add(const Marker(markerId: MarkerId("2"),
          position: LatLng(31.036312, 31.369905),
          ));
          myMarkers.add(const Marker(
            markerId: MarkerId("1"),
            position: LatLng(31.036312, 31.369905),
            infoWindow:InfoWindow(title: "أبو احمد",snippet: "تصليح حنفية مكسورة من الداخل")
          ));
        });
      },
      markers: myMarkers,
    );
  }
}
 */