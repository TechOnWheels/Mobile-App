import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/common/sign_up.dart';
import 'package:wheel_manager/common/styles/styles.dart';
import 'package:wheel_manager/common/widget/bottom_app_bar_2.dart';

import '../renting/domain/logic/logic.dart';

DataBaseHelper dataBaseHelper = DataBaseHelper();

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool hiddenPassword = true;

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
                            child: Text("Inicio de sesión",
                                style: TextStyle(
                                    color: Color(0xFF000000), fontSize: 48),
                                textAlign: TextAlign.left),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, right: 210, bottom: 20),
                            height: 4,
                            width: 58,
                            color: Color(0xff2CB67D),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                objStyles.textTitle("Correo electrónico"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
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
                objStyles.textTitle("Contraseña"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
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
                              : Icons.visibility_off_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
                /*
                Padding(
                  padding: const EdgeInsets.only(right: 227.0, bottom: 60),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                */

                SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 85.w,
                      height: 60,
                      child: Container(
                        child: FutureBuilder<List>(
                          future: dataBaseHelper.getCustomer(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return snapshot.hasData
                                ? ItemList_(
                                    list: snapshot.data ?? [],
                                    emailController: emailController,
                                    passwordController: passwordController,
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                /*
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, bottom: 20, left: 35, right: 10),
                      height: 1,
                      width: 150,
                      color: Color(0xff000000),
                    ),
                    Text(
                      "OR",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                      height: 1,
                      width: 150,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
                Container(
                  width: 85.w,
                  height: 60,
                  //alignment: AlignmentDirectional.centerEnd,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.h)),
                      ),
                      minimumSize: Size(155, 50),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff000000),
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Image.asset('assets/google.png'),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Continue With Google",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 85.w,
                  height: 60,
                  //alignment: AlignmentDirectional.centerEnd,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.h)),
                      ),
                      minimumSize: Size(155, 50),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff000000),
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Image.asset('assets/facebook.png'),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Continue With Facebook",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                */
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, top: 15),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "¿Aún no tiene una cuenta?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: Text(
                          "Regístrese",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffFCC21B),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemList_ extends StatelessWidget {
  final List list;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const ItemList_(
      {required this.list,
      required this.emailController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    //var i = list.length;

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      itemCount: 1,
      //itemCount: list == null ? 0 : list.length,
      itemBuilder: (ctx, i) {
        return Container(
          //padding: EdgeInsets.symmetric(horizontal: 1.sp, vertical: 1.sp),
          child: SizedBox(
            child: ElevatedButton(
              onPressed: () {
                //print(list[i]['email'].toString());
                if (emailController.text.trim() == list[i]['email'].toString() &&
                    passwordController.text.trim() ==
                        list[i]['password'].toString()) {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new BottomBar2(),
                    ),
                  );
                } else {
                  print("Error");
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.h)),
                ),
              ),
              child: Text('Ingresar'),
            ),
          ),
        );
      },
    );

  }
}
