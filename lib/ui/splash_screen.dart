import 'package:flutter/material.dart';
import 'package:untitled/ui/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Wisdom()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            'https://cdn.dribbble.com/users/527451/screenshots/3124186/media/d852e2d2a9f80e725cbd80586d2e39de.gif',
            scale: 4.0,
          )
        ]),
      ),
    );
  }
}
