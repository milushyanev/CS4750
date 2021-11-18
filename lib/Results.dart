import 'package:flutter/material.dart';
import 'HomePage.dart';




class Results extends StatelessWidget {

  final double loanA;
  final double pmiLow;
  final double pmiMed;
  final double pmiHigh;
  final int pmiStop;
  final double loan15;
  final double loan30;
  final double down20;
  final String approval;
  final double bestC;
  final double bestCdown;
  final double downP;


  final double homeInsurance=0;
  final double mortgageInsurance=0;


  Results({required this.loanA, required this.pmiLow,required this.pmiMed,required this.pmiHigh,required this.pmiStop,required this.loan15,
    required this.loan30, required this.down20, required this.approval, required this.bestC, required this.bestCdown, required this.downP});


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
          Container(
            child: Column(
              children: [
                Expanded(
                  child:ListView(
                    children: <Widget>[
                      //Padding(padding: EdgeInsets.all(30)),
                      Container(
                        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.white.withOpacity(.2),
                                        Colors.white.withOpacity(.3)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.centerRight
                                  ),
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
                                    SizedBox(height: 10,),
                                    Text(
                                      '$approval',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold

                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      "Loan Amount: \$ ${double.parse(loanA.toStringAsFixed(2))}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Down Payment: \$ ${double.parse(downP.toStringAsFixed(2))}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Monthly Payment: \$ ${double.parse(loan30.toStringAsFixed(2))}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
//                              SizedBox(height:10),
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
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(top:30),
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/chart.png',
                                            ),
                                            fit:BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 20,
                                              offset: Offset(-1,-5),
                                              color: Colors.blue.withOpacity(.3)
                                          )
                                        ]
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:40, left: 220),
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/apr.png',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          "Monthly Payment:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 15)),
                                        Text(
                                          '\$ ${double.parse(loan15.toStringAsFixed(2))}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.apartment_rounded,size: 20, color: Colors.white),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "15-Year Fixed Rate",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(top:30),
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/chart.png',
                                            ),
                                            fit:BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 20,
                                              offset: Offset(-1,-5),
                                              color: Colors.blue.withOpacity(.3)
                                          )
                                        ]
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:13, left: 220),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/pmi.png',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          "PMI:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 10)),
                                        Text(
                                          '\$ ${double.parse(pmiMed.toStringAsFixed(2))}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 10)),
                                        Text(
                                          "Low: \$ ${double.parse(pmiLow.toStringAsFixed(2))}  High: \$ ${double.parse(pmiHigh.toStringAsFixed(2))}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.analytics_rounded,size: 20, color: Colors.white),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Private Mortgage Insurance",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(top:30),
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/chart.png',
                                            ),
                                            fit:BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 20,
                                              offset: Offset(-1,-5),
                                              color: Colors.blue.withOpacity(.3)
                                          )
                                        ]
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:40, left: 220),
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/lvr.png',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          "LVR:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 10)),
                                        Text(
                                          "$pmiStop Payments",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5)),
                                        Text(
                                          "until PMI is dropped",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.account_balance_rounded,size: 20, color: Colors.white),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Loan to Value Ratio",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(top:30),
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/chart.png',
                                            ),
                                            fit:BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 20,
                                              offset: Offset(-1,-5),
                                              color: Colors.blue.withOpacity(.3)
                                          )
                                        ]
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:125, left: 220),
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/bestC.png',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          "Best Case Scenario:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 10)),
                                        Text(
                                          '\$ ${double.parse(bestC.toStringAsFixed(2))}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 15)),
                                        Text(
                                          "Down Payment (20%): \$ ${double.parse(bestCdown.toStringAsFixed(2))}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5)),
                                        Text(
                                          "When PMI: \$0",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5)),
                                        Text(
                                          "If Expenses: \$0",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold
                                          ),
                                        ),

                                        SizedBox(height: 30),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.pending_actions,size: 20, color: Colors.white),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Biggest Loan Amount",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),




                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ],
            )
          )

        ],

      ),
    );
  }

}

