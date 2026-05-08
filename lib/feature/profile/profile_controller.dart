import 'package:flutter/material.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/model/profile_item.dart';

class ProfileController extends BaseController {
  final List<ProfileItem> profileItems = [
    ProfileItem(
      title: "Kids' Mode",
      icon: Icons.child_care_rounded,
      color: Colors.orange,
      onTap: () {},
    ),
    ProfileItem(
      title: "AI Assistance",
      icon: Icons.auto_awesome_rounded,
      color: Colors.purple,
      onTap: () {},
    ),
    ProfileItem(
      title: "Personal information",
      icon: Icons.person_outline_rounded,
      color: Colors.blue,
      onTap: () {},
    ),
    ProfileItem(
      title: "About",
      icon: Icons.info_outline_rounded,
      color: Colors.teal,
      onTap: () {},
    ),
    ProfileItem(
      title: "Logout",
      icon: Icons.logout_rounded,
      color: Colors.red,
      onTap: () {},
    ),
  ];
}
