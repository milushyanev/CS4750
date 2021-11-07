
import 'package:flutter/material.dart';

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
          Expanded(
            child:ListView(
             children: <Widget>[
               Padding(padding: EdgeInsets.all(30)),

               Container(
                 margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                 decoration: BoxDecoration(
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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

                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
                     color: Colors.white.withOpacity(.3)
                 ),
                 child:Column(
                   children: <Widget>[
                     Slider(
                         min:0,
                         max:1000000,
                         divisions: 10000,
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
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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
                     border: Border.all(width:1,color: Colors.white),
                     borderRadius: const BorderRadius.all(const Radius.circular(8)),
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
                 child:ElevatedButton(onPressed: () => {
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
                     child: Text('Calculate Rates',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 14,
                             fontWeight: FontWeight.bold
                         )
                     )
                 ),
               ),
               Padding(padding: EdgeInsets.all(20)),

             ],

          ),
          ),

        ],
        
      ),
    );
  }
}


