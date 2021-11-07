import 'package:flutter/material.dart';

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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/keys.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(.1),
                      BlendMode.dstATop)
              )
          ),
          //color: Colors.white.withOpacity(.7),
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/images/logo.png"),
          ),
        )
    );
  }
}
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
