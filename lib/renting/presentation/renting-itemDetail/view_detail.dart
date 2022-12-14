import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wheel_manager/renting/presentation/renting-detail/book.dart';

import '../../domain/logic/logic.dart';
/*
class viewDetail extends StatelessWidget {
  const viewDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
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
                  image: NetworkImage(
                    //vehicles[i].image,
                    "https://picsum.photos/700/400?random",
                  ),
                  //height: 120,
                  fit: BoxFit.fitWidth),
              /*Image(
                    image: AssetImage('assets/skate.jpg'),
                    fit: BoxFit.fitWidth
                )*/
            ),
            Container(
              padding:
                  const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "RATED",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ],
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
              ]),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 10, right: 10, bottom: 20),
                    width: 75,
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: Text("1.20 kg",
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
                    width: 75,
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              "Wheels",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: Text("Gzuck",
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
                    width: 75,
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              "Filming",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: Text("Abec - 11",
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
                    width: 75,
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              "Speed",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2B4C59)),
                            )),
                        Container(
                          child: Text("60 km/h",
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
              child: Row(children: [
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
              ]),
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
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 15),
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
                      borderRadius: BorderRadius.all(Radius.circular(
                              10) //                 <--- border radius here
                          ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book()),
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
*/

class Detail extends StatefulWidget {
  List list;
  int index;

  Detail({required this.index, required this.list});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DataBaseHelper dataBaseHelper = new DataBaseHelper();

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
              /*
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
              */
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
            /*
              Image(
                  image: AssetImage('assets/skate.jpg'),
                  fit: BoxFit.fitWidth
              )
                  */
          ),
          /*
          Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  "RATED",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          */
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
                SizedBox(
                  width: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 16, top: 10, right: 10, bottom: 20),
                  width: 105,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            "Calificaci??n",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text(
                            widget.list[widget.index]['score'].toString(),
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
                  width: 150,
                  height: 75,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            "Tipo de Veh??culo",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4C59)),
                          )),
                      Container(
                        child: Text(
                            widget.list[widget.index]['vehicleType']['typeName'],
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
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        "Descripci??n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        //"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                        widget.list[widget.index]['description'],
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
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
                              "S/.250/d??a",
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => BookPage(
                                index: widget.index, list: widget.list),
                          ),
                        );
                        /*
                            Navigator.push(context,
                              MaterialPageRoute(
                                  //builder: (context) => const book()),);
                                  builder: (context) => const BookPage()),);
                            */
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
}
