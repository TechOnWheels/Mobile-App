import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wheel_manager/maintenance/domain/logic/logic.dart';
import 'package:wheel_manager/renting/presentation/renting-detail/book.dart';

class DetailMaintenance extends StatefulWidget {
  List list;
  int index;

  DetailMaintenance({required this.index, required this.list});

  @override
  State<DetailMaintenance> createState() => _DetailMaintenanceState();
}

class _DetailMaintenanceState extends State<DetailMaintenance> {
  DatabaseMaintenance dataBaseHelper = new DatabaseMaintenance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: true,
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
                      child: Text(
                        widget.list[widget.index]['offerName'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Container(
            child: Image(
              image: NetworkImage(
                widget.list[widget.index]['imageUrl'],
                //vehicles[i].image,
                //"https://picsum.photos/700/400?random",
              ),
              height: 140,
              //fit: BoxFit.fitWidth
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Especificaciones",
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
                  width: 100,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            "Desde",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text(
                            widget.list[widget.index]['startDate'].toString(),
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
                      left: 16, top: 10, right: 10, bottom: 20),
                  width: 100,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            "Hasta",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text(
                            widget.list[widget.index]['endDate'].toString(),
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
                  width: 100,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            "Precio",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text(
                            widget.list[widget.index]['offerPrice'].toString(),
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Descripción",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          widget.list[widget.index]['description'],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
