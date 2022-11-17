import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/renting/presentation/renting-payment/payment.dart';

import 'package:intl/intl.dart';
import '../../domain/logic/logic.dart';

//Page Figma
class book extends StatelessWidget {
  const book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            child: Row(children: [
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
                      icon: Icon(Icons.favorite),
                      iconSize: 30,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ]),
          ),
          Container(
              child: Image(
                  image: AssetImage('assets/skate.jpg'), fit: BoxFit.fitWidth)),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(children: [
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
            ]),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 16, top: 10, right: 10, bottom: 20),
                  width: 170,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 12, bottom: 0),
                          child: Text(
                            "START",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text("16 Feb. 2022",
                            style: TextStyle(
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
                  margin: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 20),
                  width: 170,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 12, bottom: 0),
                          child: Text(
                            "END",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text("16 Feb. 2022",
                            style: TextStyle(
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
            child: Row(children: [
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
            ]),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 16, top: 10, right: 10, bottom: 20),
                  width: 360,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 18, bottom: 0),
                          child: Text(
                            "Street 203 House 348 City Kigali",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
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
          height: 80, //set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 10, left: 15),
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
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 15),
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
                      borderRadius: BorderRadius.all(Radius.circular(
                              10) //                 <--- border radius here
                          ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => payment()),
                        );
                      },
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class BookPage extends StatefulWidget {
  List list;
  int index;

  BookPage({required this.index, required this.list});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  DataBaseHelper dataBaseHelper = DataBaseHelper();

  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              child: Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        width: 150,
                        child: Text(
                          widget.list[widget.index]['name'],
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
                        icon: Icon(Icons.favorite),
                        iconSize: 30,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ]),
            ),
            Container(
                child: Image(
                    image: AssetImage('assets/skate.jpg'),
                    fit: BoxFit.fitWidth)),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(children: [
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
              ]),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 10, right: 10, bottom: 20),
                    width: 170,
                    height: 80,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 12, bottom: 0),
                            child: Text(
                              "START",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: TextFormField(
                            controller: startController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Fecha de inicio',
                            ),
                            validator: (value) {
                              // add your custom validation here.
                              if (value!.isEmpty) {
                                return 'Seleccione una fecha de inicio';
                              }
                            },
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                locale: const Locale("es", "PE"),
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2008),
                                lastDate: DateTime(valueDate.year,
                                    valueDate.month, valueDate.day),
                              );

                              //DateFormat sdf = new DateFormat("yyyy-MM-dd'T'HH:mm:ss");

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate);

                                //String dateWithT = formattedDate.substring(0, 10) + 'T00:00:00.000Z';
                                //print(dateWithT);

                                setState(() {
                                  //startController.text = DateTime.parse(dateWithT).toIso8601String();
                                  //startController.text = dateWithT;
                                  startController.text = formattedDate;
                                  //print(pickedDate.toString());
                                });
                              } else {
                                print("Seleccionar una fecha");
                              }
                            },
                          ),
                          /*
                          Text(
                            "16 Feb. 2022",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          */
                        ),
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
                    margin: const EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 20),
                    width: 170,
                    height: 80,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 12, bottom: 0),
                            child: Text(
                              "END",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: TextFormField(
                            controller: endController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Fecha de fin',
                            ),
                            validator: (value) {
                              // add your custom validation here.
                              if (value!.isEmpty) {
                                return 'Seleccione una fecha de fin';
                              }
                            },
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                locale: const Locale("es", "PE"),
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2008),
                                lastDate: DateTime(
                                    valueDate.year, valueDate.month, valueDate.day),
                              );

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate);

                                //String dateWithT = formattedDate.substring(0, 10) + 'T00:00:00.000Z';
                                //print(dateWithT);

                                setState(() {
                                  //endController.text = DateTime.parse(dateWithT).toIso8601String();
                                  //endController.text = dateWithT;
                                  endController.text = formattedDate;
                                });
                              } else {
                                print("Seleccionar una fecha");
                              }
                            },
                          ),
                          /*
                          Text(
                            "16 Feb. 2022",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          */
                        ),
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

            /*
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: new TextFormField(
                controller: startController,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.date_range),
                  label: const Text('Fecha de inicio'),
                  labelStyle: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff9FA5C0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.h),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: const Color(0xff9FA5C0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.h),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff14a793),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.h),
                    ),
                  ),
                ),
                validator: (value) {
                  // add your custom validation here.
                  if (value!.isEmpty) {
                    return 'Seleccione una fecha de emisión';
                  }
                },
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    locale: const Locale("es", "PE"),
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2008),
                    lastDate: DateTime(
                        valueDate.year, valueDate.month, valueDate.day),
                  );

                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                    DateFormat('yyyy/MM/dd').format(pickedDate);
                    print(formattedDate);

                    setState(() {
                      startController.text = formattedDate;
                    });
                  } else {
                    print("Seleccionar una fecha");
                  }
                },
              ),
            ),
             */

            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(children: [
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
              ]),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 10, right: 10, bottom: 20),
                    width: 360,
                    height: 60,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 18, bottom: 0),
                            child: Text(
                              "Street 203 House 348 City Kigali",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
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
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80, //set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 10, left: 15),
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
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 15),
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
                      borderRadius: BorderRadius.all(Radius.circular(
                              10) //                 <--- border radius here
                          ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        dataBaseHelper.addRent(startController.text.trim(),
                            endController.text.trim());
                        Navigator.pop(context, true);
                        /*
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => payment()),
                        );
                        */
                      },
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }

  DateTime valueDate = DateTime.now();
}
