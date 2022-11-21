/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';


class AddUserPage extends StatefulWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  DataBaseHelper dataBaseHelper = DataBaseHelper();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(
              top: 62, left: 12.0, right: 12.0, bottom: 12.0),
          children: [
            Container(
              height: 50,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'name',
                  hintText: 'Name',
                  icon: new Icon(Icons.person),
                ),
              ),
            ),
            Container(
              height: 50,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'Email',
                  icon: new Icon(Icons.email),
                ),
              ),
            ),
            Container(
              height: 50,
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'phone',
                  hintText: 'Phone',
                  icon: new Icon(Icons.phone),
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.only(top: 44.0),
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  dataBaseHelper.addUser(nameController.text.trim(),
                      emailController.text.trim(), phoneController.text.trim());
                  Navigator.pop(context, true);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, backgroundColor: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
