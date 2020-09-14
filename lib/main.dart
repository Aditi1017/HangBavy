import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wallpaperapp/views/SplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scenery Sight',
      theme: ThemeData(primaryColor: Colors.white),
      home: SplashScreen(),
    );
  }
}
