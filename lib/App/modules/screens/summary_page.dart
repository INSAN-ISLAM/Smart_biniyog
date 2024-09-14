import 'package:flutter/cupertino.dart';
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
                child: Center(
                    child: Text(
                  'Paddy Harvest-12',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                  ),
                ))),
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                children: [
                  Expanded(child: Center(
                    child: Text(
                      'Business Type :',
                      style: TextStyle(
                        // color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Trading',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),


                ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Investment Time :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '3 Days',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Investment Goal :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Raise :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'In Waiting :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Project Duration :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Min Investment :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'ROI:',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
              child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text(
                        'Project Status :',
                        style: TextStyle(
                          // color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: Text(
                          '120000',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                  ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
