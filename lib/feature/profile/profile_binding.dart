import 'package:get/get.dart';
import 'package:kids_trakr/feature/profile/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<ProfileController>(ProfileController());
  }
}