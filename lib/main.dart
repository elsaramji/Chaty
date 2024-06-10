// main.dart
import 'package:massage/Screens/chat_screen.dart';
import 'package:massage/Screens/massage_screen.dart';
import 'package:massage/logic/constans.dart';

import '../Screens/login_screen.dart';
import '../Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:massage/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

// main.dart
// main.dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Massage',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                kColorbackgroundbutton,
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 18, color: Colors.black),
              titleSmall: TextStyle(fontSize: 14, color: Colors.black),
              headlineSmall: TextStyle(
                  color: kColorTextButton,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
      home: LoginScreen(),
    );
  }
}
