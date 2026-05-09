import 'package:get/get.dart';
import 'package:kids_trakr/feature/attendance/attendance_controller.dart';

class AttendanceBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<AttendanceController>(AttendanceController());
  }
}