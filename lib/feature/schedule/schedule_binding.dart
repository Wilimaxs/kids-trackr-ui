import 'package:get/get.dart';
import 'package:kids_trakr/feature/schedule/schedule_controller.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ScheduleController>(ScheduleController());
  }
}
