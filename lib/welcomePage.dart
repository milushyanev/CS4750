import 'package:flutter/material.dart';
import 'HomePage.dart';


class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/images/keys.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                          width: 180,
                          height: 180,
                          color: Colors.white.withOpacity(.8),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage("assets/images/logo.png"),
                          )
                      ),
                    ),
                    SizedBox(height: 50),
                    Text('TMA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 20),
                    Text( 'Montly Payments.\nTotal Loan Approval.\nGet all the Details.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 40,),
                    ElevatedButton(onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      )
                    },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          shadowColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        child: Text('Get your Pre-Approval rates',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            )
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}