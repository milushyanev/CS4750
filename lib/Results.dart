
import 'package:flutter/material.dart';
import 'HomePage.dart';




class Results extends StatelessWidget {

   double loanA;
  double interestRate =2.0;
  double monthlyIncome =1000;
  double expenses = 0;
  double downPayment=0;
  double propertyTax=0.5;
  //double hoaTax=0;
  double homeInsurance=0;
  double mortgageInsurance=0;



Results({required this.loanA});
  @override
  Widget build(BuildContext context) {
    String $hoaTax;
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
                //Padding(padding: EdgeInsets.all(30)),
                //Text('$loanA'),
                Container(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(.2),
                              Colors.white.withOpacity(.3)
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight
                          ),
                          //  color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(80),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5,5),
                              blurRadius: 20,
                              color: Colors.black.withOpacity(.2)
                            )
                          ]
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pre-Approval Status:",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                "Approved",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,

                                ),
                              ),
                              SizedBox(height:25),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.apartment_rounded,size: 20, color: Colors.white),
                                      SizedBox(width: 10,),
                                      Text(
                                        "30-Year Fixed Rate",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,

                                        ),
                                      ),

                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(.6),
                                          blurRadius: 10,
                                          offset: Offset(4,4)
                                        )
                                      ]
                                    ),
                                    child: Icon(
                                      Icons.info,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],

            ),
          ),

        ],

      ),
    );
  }
}
