import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/maintenance/domain/entities/maintenance.dart';
import 'package:wheel_manager/maintenance/domain/logic/logic.dart';
import 'package:wheel_manager/tracking/presentation/tracking-detail/tracking.dart';
import 'package:wheel_manager/maintenance/presentation/maintenance-serviceDetail/viewMaintenance.dart';
import 'package:wheel_manager/renting/presentation/renting-itemDetail/view_detail.dart';

import '../../../common/styles/styles.dart';
import '../../../common/widget/bottom_app_bar_2.dart';
import '../../../renting/domain/entities/vehicle.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {

  DatabaseMaintenance dataBaseHelper = new DatabaseMaintenance();

//Vehicle? vehicle;

  var rating = 0.0;
  double? _ratingValue;

  List<Vehicle> vehicles = Vehicle.vehicles();
  var isLoaded = false;

  late List data;

/*
  _navigateAddUser(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddUserPage()),
    );

    if (result) {
      setState(() {});
    }
  }
   */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataBaseHelper.getMaintenance();
  }

  //List<Maintenance> maintenance = Maintenance.maintenance();

  @override
  Widget build(BuildContext context) {
    var objStyles = new Styles();

    return Scaffold(
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
                  //margin: EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      //TITULO
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
                                      //Navigator.pop(context);
                                      Navigator.of(context).push(
                                        new MaterialPageRoute(
                                          builder: (BuildContext context) => new BottomBar2(),
                                        ),
                                      );
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
                                  margin: EdgeInsets.only(top: 20, left: 85),
                                  child: Text("Ofertas",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left),
                                ),
                                /*
                                IconButton(
                                  padding:
                                  new EdgeInsets.only(top: 20.0, left: 90),
                                  icon: const Icon(Icons.add_circle_outline,
                                      size: 30),
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                                */
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 7, top: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "TENDENCIAS",
                    style: TextStyle(
                      color: Color(0xFF2B4C59).withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: FutureBuilder<List>(
                    future: dataBaseHelper.getMaintenance(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }
                      return snapshot.hasData
                          ? ItemListMaintenance(
                        list: snapshot.data ?? [],
                      )
                          : Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                /*
                Column(
                  children: [
                    Center(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        //itemCount: 10,
                        itemCount: maintenance.length,
                        itemBuilder: (ctx, i) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.sp, vertical: 1.sp),
                            /*
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(8.0),
                            ),

                             */
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                margin: EdgeInsets.all(5),
                                elevation: 5,

                                // Dentro de esta propiedad usamos ClipRRect
                                child: ClipRRect(
                                  // Los bordes del contenido del card se cortan usando BorderRadius
                                  borderRadius: BorderRadius.circular(10),
                                  // EL widget hijo que será recortado segun la propiedad anterior
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        // Como queremos traer una imagen desde un url usamos NetworkImage
                                        image: NetworkImage(
                                          maintenance[i].image,
                                        ),
                                        height: 120,
                                      ),
                                      Text(
                                        maintenance[i].title,
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          color: Color(0xff2B4C59),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            maintenance[i].prize,
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Color(0xff2B4C59),
                                            ),
                                          ),
                                          Text(
                                            "/day",
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Color(0xffBECEDA),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFFCE31),
                                          ),

                                          SizedBox(width: 15,),

                                          Container(
                                            width: 10.0,
                                            height: 25.0,
                                            child: new RawMaterialButton(
                                              shape: new CircleBorder(),
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.arrow_circle_right,
                                                color: Color(0xff2B4C59),
                                              ),
                                              onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => const viewMaintenance()),
                                                  );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 264,
                        ),
                      ),
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
  }
}


class ItemListMaintenance extends StatelessWidget {
  final List list;

  const ItemListMaintenance({required this.list});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      //itemCount: 10,
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (ctx, i) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 1.sp, vertical: 1.sp),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => DetailMaintenance(index: i, list: list),
              ),
            ),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(5),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: NetworkImage(
                          //vehicles[i].image,
                          //"https://picsum.photos/700/400?random",
                          list[i]['imageUrl'].toString(),
                        ),
                        height: 120,
                      ),

                      Text(
                        list[i]['offerName'].toString(),
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Color(0xff2B4C59),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Precio: " + list[i]['offerPrice'].toString(),
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xff515356),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //StarsQuality(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 5,
        mainAxisExtent: 264,
      ),
    );
  }
}