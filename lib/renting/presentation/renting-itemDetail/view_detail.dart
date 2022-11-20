import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wheel_manager/community/presentation/renting-list/search_vehicle.dart';
import 'package:wheel_manager/renting/presentation/renting-detail/book.dart';

import '../../domain/logic/logic.dart';


class viewDetail extends StatelessWidget {
  const viewDetail({Key? key}) : super(key: key);

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
                image: NetworkImage(
                  //vehicles[i].image,
                  "https://picsum.photos/700/400?random",
                ),
                //height: 120,
                fit: BoxFit.fitWidth
              ),
              /*Image(
                  image: AssetImage('assets/skate.jpg'),
                  fit: BoxFit.fitWidth
              )*/
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
                                  builder: (context) => const book()),);
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

class Detail extends StatefulWidget {
  List list;
  int index;

  Detail({required this.index, required this.list});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DataBaseHelper dataBaseHelper = new DataBaseHelper();

  _navigateList(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchVehicle()),
    );

    if (result) {
      setState(() {});
    }
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Are you sure to delete the record from the database '${widget.list[widget.index]['id']}'"),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            dataBaseHelper
                .removeRegister(widget.list[widget.index]['id'].toString());
            _navigateList(context);
          },
          child: new Text(
            "Ok, remove!",
            style: new TextStyle(color: Colors.black),
          ),
        ),
        new ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: new Text(
            "CANCEL",
            style: new TextStyle(color: Colors.black),
          ),
        ),
      ],
    );

    showDialog(context: context, builder: (_) => alertDialog);
  }

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
                                  widget.list[widget.index]['username'],
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
                  image: NetworkImage(
                    //vehicles[i].image,
                    "https://picsum.photos/700/400?random",
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => BookPage(index: widget.index, list: widget.list),
                              ),
                            );
                            /*
                            Navigator.push(context,
                              MaterialPageRoute(
                                  //builder: (context) => const book()),);
                                  builder: (context) => const BookPage()),);
                            */
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
    /*
    return Scaffold(
      body: Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: [
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['name'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                Divider(),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['email'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                Divider(),
                /*
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new EditUserPage(
                              list: widget.list, index: widget.index),
                        ),
                      ),
                      child: new Text("Edit"),
                    ),
                    VerticalDivider(),
                    ElevatedButton(
                      onPressed: () => confirm(),
                      child: new Text("Delete"),
                    ),
                  ],
                ),
                */
              ],
            ),
          ),
        ),
      ),
    );
    */
  }
}