import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 40,
              color: Colors.black,
              child: Center(child: Text('Paddy Harvest-12',
             style: TextStyle(
               color: Colors.white,
               fontSize: 15,
               fontWeight: FontWeight.w500,
               letterSpacing: 2,
             ),
              ))),
          SizedBox(height: 5,),
          Divider(
            color: Colors.grey,
            // height: 10,
            thickness: 2,
           // indent: 20,
           // endIndent: 20,
          ),
          Row(children: [


                     Expanded(
                         flex: 50,

                         child: Column(
                           children: [
                             Text('Business Type',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('Investment Time',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('Investment Goal',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('raise',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('In Waiting',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('Project Duration',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),

                             Text('Min.Investment',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('Projected',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('ROI',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),
                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                             Text('Project Status',style: TextStyle(
                               // color: Colors.green,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold

                             ),),

                             Divider(
                               color: Colors.grey,
                               // height: 10,
                               thickness: 2,
                               // indent: 20,
                               // endIndent: 20,
                             ),
                           ],
                         )



                     ) ,








                      Expanded(
                          flex: 50,

                          child: Column(
                            children: [
                              Text(': Trading',style: TextStyle(
                                // color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': 3 Days',style: TextStyle(
                                // color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': 1200000/=',style: TextStyle(
                                // color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': 67436564/=',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': 55343/=',style: TextStyle(
                                  //color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(':5 Months',style: TextStyle(
                                  //color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),

                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': 12800/=',style: TextStyle(
                                 // color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': Excluding Service Charge',style: TextStyle(
                                  //color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text('Annually 35%',style: TextStyle(
                                 // color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              Text(': Running',style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold

                              ),),
                              Divider(
                                color: Colors.grey,
                                // height: 10,
                                thickness: 2,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                            ],
                          )) ,




                    ],)






        ],
      ),
    ),
    );
  }
}
