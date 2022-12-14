import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/management/presentation/management-itemDetail/manage_detail.dart';

import '../../../common/styles/styles.dart';
import '../../../renting/domain/entities/vehicle.dart';

class SavedVehicle extends StatefulWidget {
  const SavedVehicle({Key? key}) : super(key: key);

  @override
  State<SavedVehicle> createState() => _SavedVehicleState();
}

class _SavedVehicleState extends State<SavedVehicle> {

  var rating = 0.0;
  double? _ratingValue;

  List<Vehicle> vehicles = Vehicle.vehicles();
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
  }

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
                                  margin: EdgeInsets.only(top: 20, left: 75),
                                  child: Text("Discover",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left),
                                ),
                                IconButton(
                                  padding:
                                  new EdgeInsets.only(top: 20.0, left: 90),
                                  icon: const Icon(Icons.shopping_cart_outlined,
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
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            fillColor: Color(0xffEAECF0),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: 'Search',
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            suffixIcon: Container(
                              padding: EdgeInsets.all(15),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              width: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 7, top: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "TRENDING",
                    style: TextStyle(
                      color: Color(0xFF2B4C59).withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        //itemCount: 10,
                        itemCount: vehicles.length,
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
                                  // EL widget hijo que ser?? recortado segun la propiedad anterior
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        // Como queremos traer una imagen desde un url usamos NetworkImage
                                        image: NetworkImage(
                                          vehicles[i].image,
                                        ),
                                        height: 120,
                                      ),
                                      Text(
                                        vehicles[i].title,
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
                                            vehicles[i].prize,
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
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Row(
                                          children: [
                                            Icon(Icons.favorite, color: Color(0xffC64949),),

                                            SizedBox(
                                              width: 100,
                                            ),
                                            //Icon(Icons.arrow_circle_right, color: Color(0xff2B4C59),),
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
                                                    MaterialPageRoute(builder: (context) => const ManageDetail()),
                                                  );
                                                },
                                              ),
                                            )
                                          ],
                                        ),
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
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Filter'),
        icon: const Icon(Icons.filter_list),
        backgroundColor: Color(0xff2CB67D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
