import 'package:ay_khedma/features/chats_and_calls/presentation/views/chat_view.dart';
import 'package:ay_khedma/features/chats_and_calls/presentation/views/chats_and_calls_view.dart';
import 'package:ay_khedma/features/forget_password/presentation/views/forget_password_view.dart';
import 'package:ay_khedma/features/map/presentation/views/map_view.dart';
import 'package:ay_khedma/features/profile/presentation/views/profile_view.dart';
import 'package:ay_khedma/features/settings/presentation/views/settings_view.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/otp_code_view.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/sign_in_view.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../../features/user_authentication/presentation/views/bio_and_service_type_view.dart';
import '../../features/user_authentication/presentation/views/choose_avatar_view.dart';
import '../../features/user_authentication/presentation/views/find_location_view.dart';

abstract class AppRouter {
  static const kSignInRoute = '/SignInView';
  static const kSignUpRoute = '/SignUpView';
  static const kOtpCodeRoute = '/RegisterView';
  static const kForgetPasswordRoute = '/ForgetPasswordView';
  static const kFindLocationRoute = '/FindLocationView';
  static const kBioAndServiceTypeRoute = '/BioAndServiceTypeView';
  static const kChooseAvatarRoute = '/ChooseAvatarView';
  static const kHomeRoute = '/HomeViewe';
  static const kMapRoute = '/MapView';
  static const kProfileRoute = '/ProfileView';
  static const kSettingsRoute = '/SettingsView';
  static const kChatsAndCallsRoute = '/ChatsAndCallsView';
  static const kChatRoute = '/ChatView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignInRoute,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kSignUpRoute,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kOtpCodeRoute,
        builder: (context, state) => const OtpCodeView(),
      ),
      GoRoute(
        path: kForgetPasswordRoute,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kFindLocationRoute,
        builder: (context, state) => const FindLocationView(),
      ),
      GoRoute(
        path: kBioAndServiceTypeRoute,
        builder: (context, state) => const BioAndServiceTypeView(),
      ),
      GoRoute(
        path: kChooseAvatarRoute,
        builder: (context, state) => const ChooseAvatarView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kMapRoute,
        builder: (context, state) => const MyMapView(),
      ),
      GoRoute(
        path: kProfileRoute,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kSettingsRoute,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: kChatsAndCallsRoute,
        builder: (context, state) => const ChatsAndCallsView(),
      ),
      GoRoute(
        path: kChatRoute,
        builder: (context, state) => const ChatView(),
      ),
    ],
  );
}
