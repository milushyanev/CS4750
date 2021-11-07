
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _Results createState() => _Results();
}


class _Results extends State<Results> {

  //double loanAmount =100000;
  double interestRate =2.0;
  double monthlyIncome =1000;
  double expenses = 0;
  double downPayment=0;
  double propertyTax=0.5;
  double hoaTax=0;
  double homeInsurance=0;
  double mortgageInsurance=0;

  loanCalculation(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: ImageIcon (
          AssetImage('assets/images/logo.png'),
          size: 100,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,

      ),
      extendBodyBehindAppBar: true,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Container(
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
              ],
            ),
          ),
          Expanded(
            child:ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(30)),


              ],

            ),
          ),

        ],

      ),
    );
  }
}
