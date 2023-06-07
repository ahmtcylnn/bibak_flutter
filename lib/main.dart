import 'package:bibak_flutter/responsive/mobile_screen_layout.dart';
import 'package:bibak_flutter/responsive/responsive_layout_screen.dart';
import 'package:bibak_flutter/responsive/web_screen_layout.dart';
import 'package:bibak_flutter/screens/afetzede_screen.dart';
import 'package:bibak_flutter/screens/login_screen.dart';
import 'package:bibak_flutter/screens/signup_screen.dart';
import 'package:bibak_flutter/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      title: 'Bibak',
      home: AfetzedeScreen(),
      // home: LoginScreen(),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
