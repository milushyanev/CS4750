import 'package:flutter/material.dart';
import 'splashPage.dart';
import 'welcomePage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage()),
  ));
}
