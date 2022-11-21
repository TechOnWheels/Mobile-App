import 'package:wheel_manager/maintenance/domain/interfaces/interface.dart';

class MaintenanceApplication {
  late final MaintenanceInterface interface;

  Future<List> getMaintenanceApp() async {
    return interface.getMaintenanceItem();
  }

}