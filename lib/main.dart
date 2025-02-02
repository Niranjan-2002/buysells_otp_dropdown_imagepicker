import 'package:buy_sells_ui/View/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MainApp());
}



// Ideal time to initialize

//...


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen()
      );
  
  }
}
