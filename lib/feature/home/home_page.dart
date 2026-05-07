import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/home/home_controller.dart';
import 'package:kids_trakr/feature/home/widgets/header_home.dart';
import 'package:kids_trakr/feature/home/widgets/tab_menu.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'Home',
        showBackButton: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          tooltip: 'Logout',
          onPressed: () => controller.logout(),
          icon: const Icon(Icons.logout_rounded, size: 24),
        ),
        actions: [
          IconButton(
            onPressed: controller.gotToProfile,
            icon: const Icon(Icons.person_3_rounded, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          const HeaderHome(),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 28,
                  mainAxisSpacing: 32,
                  mainAxisExtent: 115,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return TabMenu(
                    title: controller.homeItems[index].title,
                    desc: controller.homeItems[index].desc,
                    image: controller.homeItems[index].image,
                    color: controller.homeItems[index].color,
                    onTap: controller.homeItems[index].onTap,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
