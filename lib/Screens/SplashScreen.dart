import 'dart:async';
import 'package:flutter/material.dart';
import 'package:videocallapp/Screens/userAuth.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  @override
  void initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => userAuth(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Fading effect
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(seconds: 1), // Duration of fade effect
        ),
      );
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.5),
      body: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
