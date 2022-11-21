import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/renting/presentation/renting-payment/payment.dart';

import 'package:intl/intl.dart';
import '../../../tracking/presentation/tracking-detail/tracking.dart';
import '../../domain/logic/logic.dart';

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
        title: const Text('Reserva'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: true,
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
                          widget.list[widget.index]['vehicleName'],
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
                                widget.list[widget.index]['brand']['brandName'],
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
              ]),
            ),
            Container(
                child:
                Image(
                    image: NetworkImage(
                      //"https://picsum.photos/700/400?random",
                        widget.list[widget.index]['imageUrl']
                    ),
                    height: 220,
                    //fit: BoxFit.fitWidth
                ),
            ),
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
                          "Horario de reserva",
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
                              "INICIO",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 40, right: 5),
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
                                //firstDate: DateTime(2008),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2030),
                              );

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
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
                              "FIN",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 40, right: 5),
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
                                //firstDate: DateTime(2008),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2030),
                              );

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate);

                                setState(() {
                                  endController.text = formattedDate;
                                });
                              } else {
                                print("Seleccionar una fecha");
                              }
                            },
                          ),
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

            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Text(
                              "Lugar de recojo",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                new MaterialPageRoute(
                                  builder: (BuildContext context) => new Tracking(),
                                ),
                              );
                            },
                            child: Text(
                              "Ver mapa",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
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
                              "Calle 203 Cuadra 38 Joaquin Atompo",
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
                      "Costo",
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
                        //Navigator.pop(context, true);

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => payment()),
                        );

                      },
                      child: Text(
                        "Reservar",
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
