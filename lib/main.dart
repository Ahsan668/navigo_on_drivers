import 'package:firebase_core/firebase_core.dart';
import'package:flutter/material.dart';
import 'package:navigo_on_drivers/splashScreen/splash_screen.dart';
import 'package:navigo_on_drivers/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'infoHandler/app_info.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppInfo(),
    child: MaterialApp(
    title: 'Navigo Drivers',
    themeMode: ThemeMode.system,
    theme: MyThemes.lightTheme,
    darkTheme: MyThemes.darkTheme,
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    ),
    );
  }
}


