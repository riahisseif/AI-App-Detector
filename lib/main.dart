import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/onboarding_screen.dart';



 List<CameraDescription> cameras;

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras =await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits Recognation',
      home: OnboardingScreen(),

    );
  }
}
