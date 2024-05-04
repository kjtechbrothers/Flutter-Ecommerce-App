

import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math'as math;

import 'package:kj_brandings/pages/home_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> with TickerProviderStateMixin{

  late final AnimationController _controller=AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this)..repeat();

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage())) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4C53A5),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: _controller,
                child: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: const Center(
                      child: Image(image: AssetImage('assets/splash_logo.png')),
                    ),
                  ),
                ),
                builder: (BuildContext context, Widget ? child){
                  return Transform.rotate(
                    angle: _controller.value*2.0*math.pi,
                    child: child,);
                }
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            const Align(
              alignment: Alignment.center,
              child: Center(child: Text('A new awakening of fashion by\nKJ Brandings',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}
