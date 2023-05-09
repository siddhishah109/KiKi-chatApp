import 'package:flutter/material.dart';
import 'package:kiki/Screens/HomePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kiki/Screens/PersonalProfile.dart';
import 'package:kiki/Screens/Splash.dart';
import 'package:kiki/popup_menu/settings.dart';
import 'package:kiki/theme/theme_model.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer<ThemeModel>(
          builder: (context, ThemeModel themeNotifier, child) {
            return MaterialApp(
                title: 'KiKi',
                routes: {
                  '/':(context) => SplashScreen(),
                  '/HomePage':(context) => HomePage(),
                  '/SettingPage':(context) => SettingPage(),
                  '/PersonalProfilt':(context) => PersonalProfile(),
                },
                debugShowCheckedModeBanner: false,
                theme:themeNotifier.isDark?ThemeData.dark():ThemeData.light(),

                initialRoute: '/PersonalProfilt',
                // home: HomePage()
                // AnimatedSplashScreen(
                //   splash:SplashWidget(),
                //   nextScreen: HomePage(),

                //   splashTransition: SplashTransition.fadeTransition,
                //   duration: 1800,
                // )

                );
          },
        ),
      );
  }
}
