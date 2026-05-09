import 'package:get/get.dart';
import 'package:kids_trakr/feature/message/message_controller.dart';

class MessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MessageController>(MessageController());
  }
}
