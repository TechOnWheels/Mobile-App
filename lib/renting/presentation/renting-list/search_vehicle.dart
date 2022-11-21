import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/common/sign_in.dart';
import 'package:wheel_manager/renting/domain/entities/vehicle.dart';
import 'package:wheel_manager/renting/presentation/renting-itemDetail/view_detail.dart';

import 'package:http/http.dart' as http;

import '../../../common/styles/styles.dart';
import '../../domain/logic/logic.dart';

class SearchVehicle extends StatefulWidget {
  const SearchVehicle({Key? key}) : super(key: key);

  @override
  State<SearchVehicle> createState() => _SearchVehicleState();
}

class _SearchVehicleState extends State<SearchVehicle> {

  DataBaseHelper dataBaseHelper = new DataBaseHelper();

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
    dataBaseHelper.getData();
  }

  @override
  Widget build(BuildContext context) {

    var objStyles = new Styles();

    return Scaffold(
      /*
      appBar: AppBar(
        title: Text('UserList'),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: SearchUser());
          }, icon: Icon(Icons.search))
        ],
      ),
      */
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
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
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
                                          builder: (BuildContext context) => new SignIn(),
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
                                  margin: EdgeInsets.only(top: 20, left: 75),
                                  child: Text("Descubre",
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
                                  icon: const Icon(Icons.shopping_cart_outlined,
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
                /*
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
                */
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
                /*
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
                                      StarsQuality(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Row(
                                          children: [
                                            FavoriteIcon(),
                                            SizedBox(
                                              width: 100,
                                            ),
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
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const viewDetail()),
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
                */
                Container(
                  child: FutureBuilder<List>(
                    future: dataBaseHelper.getData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }
                      return snapshot.hasData
                          ? ItemList(
                              list: snapshot.data ?? [],
                            )
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      /*
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Filter'),
        icon: const Icon(Icons.filter_list),
        backgroundColor: Color(0xff2CB67D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      */
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;

  const ItemList({required this.list});

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
                builder: (BuildContext context) => Detail(index: i, list: list),
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
                        list[i]['vehicleName'].toString(),
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
                          /*
                          Text(
                            list[i]['id'].toString(),
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xff2B4C59),
                            ),
                          ),
                          */
                          Text(
                            "Calificación: " + list[i]['score'].toString(),
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
