import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wheel_manager/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tech on Wheels',
        //home: const App(),
        home: SignIn(),

      );
    });
  }
}

