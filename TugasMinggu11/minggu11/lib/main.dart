import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minggu11/LoginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBqAd4fiPCTQDgJesdEe3XFE52xMzXaheE",
      appId: "1:1040392471922:android:6fac7478dbde8a32f309eb",
      messagingSenderId: "1040392471922",
      projectId: "authenticationflutter-5d788"
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: LoginScreen(),
      home: LoginScreen(),
    );
  }
}
