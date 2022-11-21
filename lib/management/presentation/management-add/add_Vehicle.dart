import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/common/widget/bottom_app_bar_2.dart';
import 'package:wheel_manager/management/domain/logic/logic.dart';
import 'package:wheel_manager/renting/presentation/renting-detail/book.dart';
import 'package:wheel_manager/management/presentation/management-list/my_vehicle.dart';
import 'package:wheel_manager/management/presentation/management-saved/saved_vehicle.dart';

import '../../../common/styles/styles.dart';
import '../../../renting/domain/logic/logic.dart';

class addVehicle extends StatefulWidget {
  const addVehicle({Key? key}) : super(key: key);

  @override
  State<addVehicle> createState() => _addVehicleState();
}

class _addVehicleState extends State<addVehicle> {
  bool hiddenPassword = true;

  DatabaseManagement dataBaseHelper = DatabaseManagement();

  final TextEditingController vehicleNameController = TextEditingController();
  final TextEditingController imageURLController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  //final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var objStyles = new Styles();

    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xFF93c47d),
      body: SingleChildScrollView(
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
                  margin: EdgeInsets.only(bottom: 35),
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
                            //alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 25, top: 50),
                            child: Text("Agregar vehiculo",
                                style: TextStyle(
                                    color: Color(0xFF000000), fontSize: 48),
                                textAlign: TextAlign.left),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(top: 20, right: 60, bottom: 20),
                            height: 4,
                            width: 58,
                            color: Color(0xff2CB67D),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                objStyles.textTitle("NOMBRE DEL VEHICULO"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: vehicleNameController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                objStyles.textTitle("URL DE LA IMAGEN"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: imageURLController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                objStyles.textTitle("DESCRIPCIÓN"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                /*
                objStyles.textTitle("PRECIO DE ALQUILER"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: priceController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                */

                Column(
                  children: [
                    SizedBox(
                      width: 85.w,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          dataBaseHelper.addVehicleInfo(vehicleNameController.text.trim(),
                              imageURLController.text.trim(), descriptionController.text.trim());
                          /*
                          dataBaseHelper.addUser_(nameController.text.trim(),
                              emailController.text.trim(), phoneController.text.trim(),
                              addressController.text.trim(), passwordController.text.trim());
                          */
                          Navigator.push(
                            context,
                            //MaterialPageRoute(builder: (context) => const SearchVehicle()),

                            //MaterialPageRoute(builder: (context) => const BottomBar()),
                            MaterialPageRoute(builder: (context) => const BottomBar2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.h)),
                          ),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff2CB67D), Color(0xff4ec796)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Container(
                            width: 85.w,
                            height: 100,
                            alignment: Alignment.center,
                            child: const Text(
                              "LOG IN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class addVehicle extends StatelessWidget {
  const addVehicle ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'), backgroundColor: Colors.white, foregroundColor: Colors.black87,
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
            padding: const EdgeInsets.only(right:20,left:20,top:20,bottom: 10),
            child: Row(
              children: [
                Text("RATED",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),

                Icon(
                  Icons.star,
                  color:  Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color:  Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color:  Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color:  Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color:  Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            "Specifications",
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
                  width: 75,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:15, bottom: 10),
                          child: Text("Weight", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("1.20 kg", style: TextStyle(
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
                  width: 75,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:15, bottom: 10),
                          child: Text("Wheels", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("Gzuck", style: TextStyle(
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
                  width: 75,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:15, bottom: 10),
                          child: Text("Filming", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("Abec - 11", style: TextStyle(
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
                  width: 75,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:15, bottom: 10),
                          child: Text("Speed", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B4C59)
                          ),
                          )
                      ),
                      Container(
                        child: Text("60 km/h", style: TextStyle(
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),

                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
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
                          "Price",
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
                                  "S/.250/Day",
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
                                  builder: (context) => const SavedVehicle()),);
                          },
                          child: Text("Add", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          ),

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
 */