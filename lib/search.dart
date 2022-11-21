/*
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/renting/domain/entities/vehicle.dart';
import 'package:wheel_manager/renting/presentation/renting-itemDetail/view_detail.dart';
import 'package:wheel_manager/renting/presentation/renting-list/search_vehicle.dart';
import 'package:wheel_manager/renting/presentation/widgets/favorite.dart';
import 'package:wheel_manager/renting/presentation/widgets/stars_quality.dart';

class FetchUser {
  var data = [];
  List<Userlist> results = [];
  String fetchurl = "https://jsonplaceholder.typicode.com/users";

  Future<List<Userlist>> getUserList({String? query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try{
      if(response.statusCode == 200){
        data = json.decode(response.body);
        results = data.map((e) => Userlist.fromJson(e)).toList();
        if(query != null){
          results = results.where((element) => element.name!.toLowerCase().contains(query.toLowerCase())).toList();
        }
      }else{
        print('api error');
      }
    } on Exception catch (e){
      print('error: $e');
    }
    return results;
  }
}


class SearchUser extends SearchDelegate{

  Future<List> getData() async {
    final response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    //await http.get(Uri.parse("http://10.0.2.2:8080/api/vehicles"));
    print("${response.statusCode}");
    print("Hola");
    return json.decode(response.body);
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = "";
      },
          icon: Icon(Icons.search))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios));
  }

  FetchUser _userList = FetchUser();

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: FutureBuilder<List>(
        future: _userList.getUserList(query: query),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return snapshot.hasData
              ? GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            //itemCount: 10,
            itemCount: data?.length,
            itemBuilder: (ctx, i) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 1.sp, vertical: 1.sp),
                child: GestureDetector(
                  onTap: () =>{},
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(5),
                      elevation: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: <Widget>[
                            /*
                    Image(
                      image: NetworkImage(
                        vehicles[i].image,
                      ),
                      height: 120,
                    ),
                    */
                            Text(
                              '${data?[i].name}',
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
                                  '${data?[i].id}',
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
          )
              : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Buscar vehículo'),
    );
  }
  
}

class ItemList_ extends StatelessWidget {
  final List list;

  const ItemList_({required this.list});

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
                      /*
                    Image(
                      image: NetworkImage(
                        vehicles[i].image,
                      ),
                      height: 120,
                    ),
                    */
                      Text(
                        list[i]['name'].toString(),
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
                            list[i]['id'].toString(),
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
    /*
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Detail(list: list, index: i),
                  ),
                ),
                child: Container(
                  height: 100.3,
                  child: Card(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  list[i]['name'].toString(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  list[i]['email'].toString(),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    */
  }
}
*/
