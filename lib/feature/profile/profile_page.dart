import 'package:flutter/material.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: 'Profile',
        showBackButton: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )
    );
  }
}
