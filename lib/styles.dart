import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles{
  TextStyle estiloBoton(){
    return TextStyle(color: Colors.white,fontSize: 16);
  }
  BoxDecoration fondoBoton(){
    return BoxDecoration(
      color: Color(0xfff6680c),
      borderRadius: BorderRadius.circular(5),
    );
  }

  Widget obtenerBoton(String texto_boton){
    return Container(
      decoration: fondoBoton(),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      width: 200,
      child: Text(texto_boton, style: estiloBoton()),
    );
  }

  Widget botonLargeGreen(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff00993A),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 16,left: 20,right: 20),
      width: 335,
      height: 56,
      child: Text(texto_boton, style: estiloBoton()),
    );
  }

  Widget botonLargeOrange(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFC883E),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 16,right: 20,left: 20),
      width: 335,
      height: 56,
      child: Text(texto_boton, style: estiloBoton()),
    );
  }

  Widget botonShortRed(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF26065),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(left: 19),
      width: 154,
      height: 52,
      child: Text(texto_boton, style: estiloBoton()),
    );
  }

  Widget botonShortOrange(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFC883E),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(left: 5),
      width: 154,
      height: 52,
      child: Text(texto_boton, style: estiloBoton()),
    );
  }

  Widget botonLoginFacebook(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1877F2),
        borderRadius: BorderRadius.circular(27),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 16),
      width: 335,
      height: 56,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 21),
            child: Icon(
              Icons.facebook, color: Colors.white,size: 35,

            ),

            /*child: Image(
              width: 33,
              height: 33,
              image: AssetImage('assets/icons/icon_google1.png'),
            ),*/
          ),
          Container(child: Text(texto_boton, style: TextStyle(color: Colors.white,fontSize: 16))),
        ],
      ),
    );
  }

  Widget botonLoginGoogle(String texto_boton){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(27),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 16),
      width: 335,
      height: 56,

      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 21),
            child: Image(
              width: 33,
              height: 33,
              image: AssetImage('assets/icons/icon_google1.png'),
            ),
          ),
          Container(child: Text(texto_boton, style: TextStyle(color: Colors.black,fontSize: 16))),
        ],
      ),
    );
  }

  Widget textTitle(String texto_titulo){
    return Container(
      margin: EdgeInsets.only(left: 35,bottom: 7),
      alignment: Alignment.centerLeft,
      child: Text(texto_titulo,
          style: TextStyle(
              color: Color(0xFF2B4C59).withOpacity(0.8),fontSize: 16,fontFamily: "Open Sans",fontWeight:FontWeight.w400)),
    );
  }

  Widget textField(){
    return Container(
      margin: EdgeInsets.only(bottom: 25,right: 20),
      height: 25,width: 260,
      alignment: Alignment.centerLeft,
      child: TextField(
        decoration: InputDecoration(

          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffBEB9B9),
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }

  Widget textFieldPassword(){
    return Container(
      margin: EdgeInsets.only(bottom: 25,right: 20),
      height: 25,width: 260,
      alignment: Alignment.centerLeft,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(

          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffBEB9B9),
              width: 1,
              style: BorderStyle.solid,

            ),
          ),
        ),
      ),
    );
  }


}