import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widgetassignment/color_schema.dart';
import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDRkfskr28-NBbDDD4PxzWTJqE5eZ9Rhwk",
      authDomain: "authent-f77f8.firebaseapp.com",
      projectId: "authent-f77f8",
      storageBucket: "authent-f77f8.appspot.com",
      messagingSenderId: "250873439843",
      appId: "1:250873439843:web:f60455e97b27ffc1823a56",
    ),
  );
  runApp(const MechTechApp());
}

class MechTechApp extends StatelessWidget {
  const MechTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MechTech Project',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.primaryColor,
        fontFamily: 'StudioFeixenSansTRIAL',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
