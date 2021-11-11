
import 'package:flutter/material.dart';
import 'Results.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  double loanAmount =100000;
  double interestRate =2.0;
  double monthlyIncome =1000;
  double expenses = 0;
  double downPayment=0;
  double propertyTax=0.5;
  double hoaTax=0;
  double homeInsurance=0;
  double mortgageInsurance=0;
  double down20=0;

  double monthlyA=0;
  double loanCalc=0;
  double loanCalc15=0;
  double pmiCalc =0;
  double pmiLow=0;
  double pmiHigh=0;
  double stopRate=0;
  double borrAmount=0;
  int pmiStopMonths=0;
  double totalLoanAmount=0;
  double totalLoanAmount1=0;
  double remLoan=0;
  String approval="";
  double bestC=0;
  double bestCdown=0;


borrowAmount(){
  setState(() {
    down20=loanAmount* (.2);
    borrAmount=loanAmount-downPayment;
    if(borrAmount<0){
      borrAmount=0;
    }
  });
}
bestCase(){
  setState(() {
    double checkLoan=100000;
    double mIncome=monthlyIncome*(0.47);
    double appAmount=0;
    while(appAmount<mIncome){
      double c=interestRate/1200;
      num num1=pow(1+c, 360);
      double loanCalc = (checkLoan-(checkLoan*.2))*((c*num1)/(num1-1));
      appAmount=loanCalc+hoaTax+((checkLoan*propertyTax)/1200);
      checkLoan=checkLoan+5000;
    }
    bestC=checkLoan;
    bestCdown=bestC*(.2);

  });
}
monthlyAff(){
  setState(() {
    monthlyA = ((monthlyIncome*47)/100) - expenses;
    if(monthlyA<0){
      monthlyA=0;
    }
  });
}

calcLoan(){
  setState(() {
    double c=interestRate/1200;
    num num1=pow(1+c, 360);
    num num2=pow(1+c,180);
    loanCalc = (borrAmount)*((c*num1)/(num1-1));
    loanCalc15 = (borrAmount)*((c*num2)/(num2-1));

  });

}
approvalMessage(){
  setState(() {
    if(totalLoanAmount<=monthlyA){
      approval="Approved";
    }
    else{
      approval="Denied";
    }
  });
}

calcTotalLoan(){
  setState(() {
    if(downPayment >= (loanAmount*(.2)) && downPayment<loanAmount){
      totalLoanAmount=loanCalc+hoaTax+((loanAmount*propertyTax)/1200);
      totalLoanAmount1=loanCalc15+hoaTax+((loanAmount*propertyTax)/1200);
    }else if(downPayment < (loanAmount*(.2))){
      totalLoanAmount=loanCalc+hoaTax+((loanAmount*propertyTax)/1200)+pmiCalc;
      totalLoanAmount1=loanCalc15+hoaTax+((loanAmount*propertyTax)/1200)+pmiCalc;
    }else if(downPayment>loanAmount){
      totalLoanAmount=hoaTax+((loanAmount*propertyTax)/1200);
      totalLoanAmount1=hoaTax+((loanAmount*propertyTax)/1200);
    }

  });
}

calcPMI(){
  setState(() {
    pmiCalc=loanAmount*(0.01235)/12;
    pmiLow=loanAmount*(0.0025)/12;
    pmiHigh=loanAmount*(0.0225)/12;
  });
}
calcLVR(){
  setState(() {
    stopRate=loanAmount*(0.8);
    remLoan=loanAmount-downPayment;
    int count=0;
    while(remLoan>stopRate){
      double monInt=(interestRate/1200)*remLoan;
      double monPrin=loanCalc-monInt;
      remLoan=remLoan-monPrin;
      count=count+1;
    }
    pmiStopMonths=count;

  });
}

  gotoResults(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Results(loanA: loanAmount,pmiLow: pmiLow,pmiMed: pmiCalc,pmiHigh: pmiHigh,pmiStop: pmiStopMonths,loan15: totalLoanAmount1,loan30: totalLoanAmount, down20: down20, approval: approval,bestC: bestC, bestCdown: bestCdown,);
    },),);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home_outlined),
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
                      Padding(padding: EdgeInsets.all(30)),

                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          //border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:1000,
                                max:15000,
                                divisions: 140,
                                label: monthlyIncome.round().toString(),
                                onChanged: (monthlyEarnings){
                                  setState((
                                      )  {
                                    monthlyIncome = monthlyEarnings;
                                  });
                                },
                                value: monthlyIncome ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Monthly Income', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('\$ ${double.parse(monthlyIncome.toStringAsFixed(2))}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),

                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          // border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:0,
                                max:10000,
                                divisions: 400,
                                label: expenses.round().toString(),
                                onChanged: (monthlyExpenses){
                                  setState((
                                      )  {
                                    expenses = monthlyExpenses;
                                  });
                                },
                                value: expenses ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Monthly Expenses', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('\$ ${double.parse(expenses.toStringAsFixed(2))}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(

                          //border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:100000,
                                max:1000000,
                                divisions: 180,
                                label: loanAmount.round().toString(),
                                onChanged: (housePrice){
                                  setState((
                                      )  {
                                    loanAmount = housePrice;
                                  });
                                },
                                value: loanAmount ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Home Value', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('\$ ${double.parse(loanAmount.toStringAsFixed(2))}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          // border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:0,
                                max:500000,
                                divisions: 1000,
                                label: downPayment.round().toString(),
                                onChanged: (DownP){
                                  setState((
                                      )  {
                                    downPayment = DownP;
                                  });
                                },
                                value: downPayment ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Down Payment', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('\$ ${double.parse(downPayment.toStringAsFixed(2))}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          // border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:2,
                                max:5,
                                label: interestRate.round().toString(),
                                onChanged: (loanAPR){
                                  setState((
                                      )  {
                                    interestRate = loanAPR;
                                  });
                                },
                                value: interestRate ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Interest Rate', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('${double.parse(interestRate.toStringAsFixed(2))} %', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          // border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:0.5,
                                max:5,
                                label: propertyTax.round().toString(),
                                onChanged: (pTax){
                                  setState((
                                      )  {
                                    propertyTax = pTax;
                                  });
                                },
                                value: propertyTax ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('Property Tax', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('${double.parse(propertyTax.toStringAsFixed(2))} %', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          //border: Border.all(width:1,color: Colors.white),
                            borderRadius: const BorderRadius.all(const Radius.circular(20)),
                            color: Colors.white.withOpacity(.3)
                        ),
                        child:Column(
                          children: <Widget>[
                            Slider(
                                min:0,
                                max:3000,
                                label: hoaTax.round().toString(),
                                onChanged: (hoaT){
                                  setState((
                                      )  {
                                    hoaTax = hoaT;
                                  });
                                },
                                value: hoaTax ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Text('HOA', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 2),
                                              blurRadius: 1),
                                        ]),
                                    ),
                                    Text('\$ ${double.parse(hoaTax.toStringAsFixed(2))}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,
                                        shadows: [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(2, 2),
                                              blurRadius: 1),
                                        ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                        //SizedBox(height: 40),
                        child:ElevatedButton(onPressed:
                            ()
                        =>[monthlyAff(),borrowAmount(), calcLoan(), calcPMI(), calcLVR(),calcTotalLoan(),approvalMessage(),bestCase(),gotoResults()],

                            //{

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Results()),
//                   )
                            // },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue,
                              shadowColor: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            child: Text('Calculate Rates',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        ),
                      ),
                    ],

                  ),
                ),

              ],
            )
          ),

        ],
        
      ),
    );
  }
}

