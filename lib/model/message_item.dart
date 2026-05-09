
import 'package:flutter/material.dart';

class MessageItem {
  final String subject;
  final String name;
  final VoidCallback onTap;

  MessageItem({required this.subject, required this.name, required this.onTap});
}
