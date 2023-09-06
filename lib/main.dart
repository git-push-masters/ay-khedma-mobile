import 'package:flutter/material.dart';
import 'core/utils/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const AyKhedmaApp());
}

class AyKhedmaApp extends StatelessWidget {
  const AyKhedmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kohinoor Arabic',
        textTheme:
            Theme.of(context).textTheme.apply(fontFamily: 'Kohinoor Arabic'),
      ),
    );
  }
}
