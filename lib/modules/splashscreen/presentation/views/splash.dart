import 'dart:html';

//import 'package:drawer/Drawer_exp.dart';
import 'package:ebook_app/modules/Drawer/presentation/views/drawerscreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

    @override
    State<SplashScreen > createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
    @override

    Widget build(BuildContext context) {
        return Scaffold(
        body: AnimatedSplashScreen(
       //splash: Icon(Icons.person),
          splash: const Center(
            child: CircleAvatar(backgroundImage: AssetImage("asset/telphanews.jpeg") ,radius: 50),
          ),


       splashIconSize: 80,
       duration: 3000,
       backgroundColor: Colors.blue,
       //splashTransition: SplashTransition.sizeTransition,
        nextScreen: DrawerScreen(),
        ),
        
        );
    }
}