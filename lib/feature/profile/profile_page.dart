import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/profile/profile_controller.dart';
import 'package:kids_trakr/feature/profile/widgets/header_profile.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Profile',
        showBackButton: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const HeaderProfile(),
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
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                itemCount: controller.profileItems.length,
                itemBuilder: (context, index) {
                  final item = controller.profileItems[index];
                  final isLogout = item.title == "Logout";

                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.03),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: item.color.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(item.icon, color: item.color, size: 24),
                      ),
                      title: Text(
                        item.title,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: isLogout ? Colors.red : null,
                            ),
                      ),
                      trailing: isLogout
                          ? null
                          : const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      onTap: item.onTap,
                    ),
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
