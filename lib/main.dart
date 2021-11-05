import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage()),
  ));
}

class SplashPage extends StatelessWidget{

  int duration = 0;
  Widget goToPage;
  SplashPage({ required this.goToPage, required this.duration });

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });
    
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.withOpacity(.7),
        alignment: Alignment.center,
        child: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
      )
    );
  }
}

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('testing')
      )
    );
  }
}
