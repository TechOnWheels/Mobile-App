import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/renting/domain/logic/logic.dart';
import 'package:wheel_manager/renting/presentation/renting-list/search_vehicle.dart';
import 'package:wheel_manager/styles/styles.dart';
import 'package:wheel_manager/widget/bottom_app_bar.dart';

import 'package:http/http.dart' as http;


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hiddenPassword = true;

  DataBaseHelper dataBaseHelper = DataBaseHelper();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                            child: Text("Sign Up",
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
                objStyles.textTitle("FULLNAME"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: nameController,
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
                objStyles.textTitle("EMAIL"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: emailController,
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

                objStyles.textTitle("PHONE"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: phoneController,
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

                objStyles.textTitle("ADDRESS"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: addressController,
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

                objStyles.textTitle("PASSWORD"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: passwordController,
                      obscureText: hiddenPassword,
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              hiddenPassword = !hiddenPassword;
                            });
                          },
                          child: Icon(hiddenPassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                objStyles.textTitle("PASSWORD"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    height: 25,
                    width: 340,
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      obscureText: hiddenPassword,
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              hiddenPassword = !hiddenPassword;
                            });
                          },
                          child: Icon(hiddenPassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Column(
                  children: [
                    SizedBox(
                      width: 85.w,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          dataBaseHelper.addUser_(nameController.text.trim(),
                              emailController.text.trim(), phoneController.text.trim(),
                              addressController.text.trim(), passwordController.text.trim());
                          Navigator.push(
                            context,
                            //MaterialPageRoute(builder: (context) => const SearchVehicle()),

                            MaterialPageRoute(builder: (context) => const BottomBar()),
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
