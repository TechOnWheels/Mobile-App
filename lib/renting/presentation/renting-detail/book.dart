import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wheel_manager/renting/presentation/renting-payment/payment.dart';


class book extends StatelessWidget {
  const book ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time'), backgroundColor: Colors.white, foregroundColor: Colors.black87,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          width: 150,
                          child: const Text(
                            "Skateboard Monark",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Monark",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          alignment: Alignment.center,
                          icon: Icon(Icons.favorite), iconSize: 30,
                          color: Colors.red, onPressed: () {  },
                        ),
                      ),
                    ],
                  )
                ]
            ),
          ),
          Container(
              child:
              Image(
                  image: AssetImage('assets/skate.jpg'),
                  fit: BoxFit.fitWidth
              )
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            "Book Date",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
          Container(
            child:
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left:16, top:10, right:10, bottom:20),
                  width: 170,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:12, bottom: 0),
                          child: Text("START", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("16 Feb. 2022", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffEAECF0),
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left:10, top:10, right:10, bottom:20),
                  width: 170,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:12, bottom: 0),
                          child: Text("END", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("16 Feb. 2022", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffEAECF0),
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
          Container(
            child:
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left:16, top:10, right:10, bottom:20),
                  width: 360,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:18, bottom: 0),
                          child: Text("Street 203 House 348 City Kigali", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffEAECF0),
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,//set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top:15,bottom:10,left:15),
                        child: const Text(
                          "Total",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xff94A1B2),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom:10,left:15),
                                child: const Text(
                                  "S/. 454",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 117,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff2CB67D),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10) //                 <--- border radius here
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => payment()),);
                          },
                          child: Text("Book Now", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),),

                        )
                    ),
                  ],
                )
              ]
          ),
        ),

      ),
    );
  }
}