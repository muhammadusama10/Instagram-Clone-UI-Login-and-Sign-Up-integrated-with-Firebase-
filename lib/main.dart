import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:insta_clone/Screens/Splash_Screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase for non-web platforms (Android, iOS)
  await Firebase.initializeApp();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyAWsFrQMcmp8JFm9biCb9HdDjybnANYEUk",
      appId: "1:1000405080824:web:2461d5b943118a7c2bf90d",
      messagingSenderId: "1000405080824",
      projectId: "instagram-clone-509d4",
    ));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash_screen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(),
      ),
    );
  }
}
