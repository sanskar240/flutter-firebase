import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/addnotes.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.white,
        brightness: Brightness.dark,
      ),
      home: LogInPage(),
      routes: {
        'AddNote': (BuildContext context) => AddNote(),
        'HomeScreen': (BuildContext context) => HomeScreen(),
      },
    );
  }
}
