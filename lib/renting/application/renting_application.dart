import 'package:http/http.dart' as http;
import 'package:wheel_manager/renting/domain/interfaces/interface.dart';

class RentingApplication {
  late final RentInterface interface;

  Future<http.Response> addRentingApp(String startController, String endController) async {
    return interface.addRenting(startController, endController);
  }

}