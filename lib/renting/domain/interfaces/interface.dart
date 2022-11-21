import '../logic/logic.dart';
import 'package:http/http.dart' as http;

abstract class RentInterface{
  DataBaseHelper dataBaseHelper = new DataBaseHelper();

  Future<http.Response> addRenting(String startController, String endController);
}