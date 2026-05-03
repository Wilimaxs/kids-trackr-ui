import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/data/remote/api_service.dart';
import 'package:kids_trakr/data/remote/dio_initializer.dart';
import 'package:kids_trakr/routes/app_pages.dart';
import 'package:kids_trakr/utils/localization/app_translation.dart';
import 'package:kids_trakr/utils/theme/app_theme.dart';

import 'data/local_storage/storage_manager.dart';
import 'feature/auth/authentication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageManager.init();
  Get.put(DioInitializer());
  Get.put(ApiService(Get.find<DioInitializer>()));
  Get.put(AuthenticationService());
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp
      ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kids Trakr',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialRoute: Routes.initial,
      getPages: PageRoutes.routes,
      translations: AppTranslation(),
      locale: AppTranslation.locale,
      fallbackLocale: AppTranslation.fallbackLocale,
    );
  }
}
