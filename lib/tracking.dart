import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/styles.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    var objStyles = new Styles();

    return Scaffold(
      body: Container(
        height: 800,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/track.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            //height: MediaQuery.of(context).size.height-40,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    //margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        /*
                              Container(
                                //margin: EdgeInsets.only(left: 0,right: 0),
                                //FLECHA REGRESAR
                                child: TextButton(
                                  onPressed: () {
                                    //Navigator.pushNamed(context, "registrate");
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: const Color (0xFF24253D),
                                    size: 30,
                                  ),
                                ),
                              ),
                               */

                        //TITULO REGISTRATE
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              //margin: EdgeInsets.only(bottom: 43),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 20),
                                    //FLECHA REGRESAR
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: const Color(0xFF24253D),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 20, left: 80),
                                    child: Text("Tracking",
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left),
                                  ),
                                  IconButton(
                                    padding:
                                    new EdgeInsets.only(top: 20.0, left: 90),
                                    icon: const Icon(Icons.more_vert,
                                        size: 30),
                                    color: Colors.black,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 500.0),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Text("Lessee",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff2B4C59),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(20),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://i.pinimg.com/736x/5b/96/68/5b966812d7b4e47c7a66c4d44e5f4f04.jpg'),
                                          radius: 20,
                                        ),
                                      ),
                                      Text("David"),
                                      SizedBox(width: 15,),
                                      Container(
                                        width: 10.0,
                                        height: 25.0,
                                        child: new RawMaterialButton(
                                          shape: new CircleBorder(),
                                          elevation: 0.0,
                                          child: Icon(
                                            Icons.call_outlined,
                                            color: Color(0xff6AC649),
                                          ),
                                          onPressed: () {
                                            /*
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => const SignUp()),
                                                            );
                                                            */
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(width: 80,),

                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Text("Remaining Minutes",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff2B4C59),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time),
                                      Text("12",
                                        style: TextStyle(
                                          color: Color(0xffCCBDBD),
                                        ),),
                                      Text(" min",
                                        style: TextStyle(
                                          color: Color(0xff2B4C59),
                                        ),),
                                      SizedBox(width: 15,),
                                      Text("42",
                                        style: TextStyle(
                                          color: Color(0xffCCBDBD),
                                        ),),
                                      Text(" sec"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Container(
                            width: 80.w,
                              decoration: BoxDecoration(
                                color: Color(0xffb0aeae),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Icon(Icons.place_outlined),
                                    SizedBox(width: 20,),
                                    Text("Street 203   House 348  City Kigali",
                                      style: TextStyle(
                                        color: Color(0xff505054,),
                                      ),),
                                  ],
                                ),
                              ),
                          ),

                          SizedBox(height: 20,),

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
