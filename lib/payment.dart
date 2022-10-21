

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheel_manager/saved_vehicle.dart';

import 'book.dart';
import 'confirmation.dart';

class payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        endDrawer: Container(
            padding:  EdgeInsets.only(right: 30),
            margin: EdgeInsets.only(right: 30),
            alignment: Alignment.centerLeft,
        ),
        appBar: AppBar(
          title: const Text('Payment'), backgroundColor: Colors.white, foregroundColor: Colors.black87,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: (){},
            )
          ],
        ),




        body: Container(
          child: SingleChildScrollView(

            child: SafeArea(
              child: Container(
                //height: MediaQuery.of(context).size.height-40,
                width: MediaQuery.of(context).size.width,

                child: Container(

                  child: Column(
                    children: [

                      Container(
                        width: 345,
                        margin: EdgeInsets.only(top: 40),
                        child: Image(
                          width: 345, height: 200,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/card.png'),
                        ),
                      ),



                      //INFORMACION TARJETA
                      Container(
                        width: 350, height: 471,
                        color: Colors.white,

                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    //Num De Tarjeta
                                    Container(
                                      margin: EdgeInsets.only(top: 26,bottom: 17),
                                      child: Text("Número de tarjeta",
                                        style: TextStyle(
                                            color: Color(0xFF24253D).withOpacity(0.7),
                                            fontSize: 16,
                                            fontFamily: "Open Sans"
                                        ),
                                      ),

                                    ),

                                    //TEXTFIELD Num Tarjeta
                                    Container(
                                      margin: EdgeInsets.only(bottom: 25,right: 20),
                                      height: 25,width: 260,
                                      alignment: Alignment.centerLeft,
                                      child: TextField(
                                        style: TextStyle(color: Color(0xFF24253D).withOpacity(0.5),fontSize: 16,fontFamily: "Open Sans"),
                                        keyboardType: TextInputType.number,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: "**** **** **** ****",
                                          border: UnderlineInputBorder(

                                            borderSide: BorderSide(
                                              color: Color(0xffBEB9B9),
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //NOMBRE DEL TITULAR
                                    Container(
                                      margin: EdgeInsets.only(bottom: 17),
                                      child: Text("Nombre del titular",
                                        style: TextStyle(
                                            color: Color(0xFF24253D).withOpacity(0.7),
                                            fontSize: 16,
                                            fontFamily: "Open Sans"
                                        ),
                                      ),

                                    ),

                                    //TEXTFIELD Num Tarjeta
                                    Container(
                                      margin: EdgeInsets.only(bottom: 25,right: 20),
                                      height: 25,width: 260,
                                      alignment: Alignment.centerLeft,
                                      child: TextField(
                                        style: TextStyle(color: Color(0xFF24253D).withOpacity(0.5),fontSize: 16,fontFamily: "Open Sans"),
                                        keyboardType: TextInputType.text,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: "Juan Perez",

                                          border: UnderlineInputBorder(

                                            borderSide: BorderSide(
                                              color: Color(0xffBEB9B9),
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),


                                    // EXPIRACION / CODIGO
                                    Container(
                                      child: Row(
                                        children: [

                                          //COLUMNA 1
                                          Container(
                                            width: 120,
                                            margin: EdgeInsets.only(right: 19),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                //EXPIRACION
                                                Container(
                                                  margin: EdgeInsets.only(bottom: 16),
                                                  child: Text("Expiración",
                                                    style: TextStyle(
                                                        color: Color(0xFF24253D).withOpacity(0.8),
                                                        fontSize: 16,
                                                        fontFamily: "Open Sans"
                                                    ),
                                                  ),

                                                ),

                                                //TEXTFIELD EXPIRACIÓN
                                                Container(
                                                  height: 25,width: 260,
                                                  alignment: Alignment.centerLeft,
                                                  child: TextField(
                                                    style: TextStyle(color: Color(0xFF24253D).withOpacity(0.5),fontSize: 16,fontFamily: "Open Sans"),
                                                    keyboardType: TextInputType.datetime,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText: "MM/YY",

                                                      border: UnderlineInputBorder(

                                                        borderSide: BorderSide(
                                                          color: Color(0xffBEB9B9),
                                                          width: 1,
                                                          style: BorderStyle.solid,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                              ],

                                            ),
                                          ),

                                          //COLUMNA 2
                                          Container(
                                            width: 120,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                //CODIGO
                                                Container(
                                                  margin: EdgeInsets.only(bottom: 16),
                                                  child: Text("Código",
                                                    style: TextStyle(
                                                        color: Color(0xFF24253D).withOpacity(0.8),
                                                        fontSize: 16,
                                                        fontFamily: "Open Sans"
                                                    ),
                                                  ),

                                                ),

                                                //TEXTFIELD CODIGO
                                                Container(

                                                  height: 25,width: 260,
                                                  alignment: Alignment.centerLeft,
                                                  child: TextField(
                                                    style: TextStyle(color: Color(0xFF24253D).withOpacity(0.5),fontSize: 16,fontFamily: "Open Sans"),
                                                    keyboardType: TextInputType.number,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText: "CVC",

                                                      border: UnderlineInputBorder(

                                                        borderSide: BorderSide(
                                                          color: Color(0xffBEB9B9),
                                                          width: 1,
                                                          style: BorderStyle.solid,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                              ],

                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    //TEXTO
                                    Container(
                                      margin: EdgeInsets.only(top: 28,bottom: 23),
                                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed magna ut le malesuada consequat.",
                                          style: TextStyle(
                                              color: Color(0xFF24253D).withOpacity(0.5),
                                              fontSize: 16)
                                      ),
                                    ),

                                  ],
                                ),
                              ),




                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),),
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
                                  builder: (context) => Confirmation()),);
                          },
                          child: Text("Pay", style: TextStyle(
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