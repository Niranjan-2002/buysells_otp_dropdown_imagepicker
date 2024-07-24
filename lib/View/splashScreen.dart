import 'package:buy_sells_ui/View/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to HomeScreen
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  const HomeScreen()),
      );
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
         Positioned.fill(
              child: Image.asset("images/img1.png",
                fit: BoxFit.cover,
              ),
            ),
            
        ],
      );
  }
}