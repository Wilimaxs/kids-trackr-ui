import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/home/home_controller.dart';
import 'package:kids_trakr/feature/home/widgets/tab_menu.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';
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
            onPressed: () {},
            icon: const Icon(Icons.person_3_rounded, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.text80,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Nita Sarah',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 42,
                        color: AppColors.text90,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.3),
                            blurRadius: 5.0,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Center(
                  child: Text(
                    'Aisha Zahra',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),

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
