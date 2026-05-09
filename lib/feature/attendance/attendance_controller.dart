import 'package:flutter/material.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/model/attendance_progress.dart';

class AttendanceController extends BaseController {
  final dataProgress = [
    AttendanceProgress(days: 82, color: Colors.blue, label: 'Present'),
    AttendanceProgress(days: 3, color: Colors.amber, label: 'Sick'),
    AttendanceProgress(days: 4, color: Colors.green, label: 'Permission'),
    AttendanceProgress(days: 1, color: Colors.red, label: 'Without explanation'),
  ];
}
