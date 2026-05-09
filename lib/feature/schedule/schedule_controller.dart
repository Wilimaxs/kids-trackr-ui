import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/model/schedule_item.dart';

class ScheduleController extends BaseController {
  final sheetSize = 0.6.obs;

  late DraggableScrollableController sheetController;

  @override
  void onInit() {
    super.onInit();
    sheetController = DraggableScrollableController();

    sheetController.addListener(() {
      sheetSize.value = sheetController.size;
    });
  }

  final tabs = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  final selectedIndex = 0.obs;

  final List<ScheduleItem> _allSchedules = [
    ScheduleItem(
      type: 'Class',
      subject: 'Mathematics',
      time: '08:00 - 09:30',
      day: 1,
    ),
    ScheduleItem(
      type: 'Lab',
      subject: 'Science',
      time: '09:45 - 11:15',
      day: 1,
    ),
    ScheduleItem(
      type: 'Class',
      subject: 'History',
      time: '11:30 - 13:00',
      day: 2,
    ),
    ScheduleItem(
      type: 'Sport',
      subject: 'Physical Education',
      time: '08:00 - 09:30',
      day: 3,
    ),
    ScheduleItem(
      type: 'Class',
      subject: 'English',
      time: '09:45 - 11:15',
      day: 4,
    ),
    ScheduleItem(
      type: 'Art',
      subject: 'Drawing',
      time: '13:30 - 15:00',
      day: 5,
    ),
    ScheduleItem(
      type: 'Class',
      subject: 'Computer Science',
      time: '10:00 - 11:30',
      day: 1,
    ),
  ];

  List<ScheduleItem> get filteredSchedules {
    return _allSchedules
        .where((item) => item.day == selectedIndex.value + 1)
        .toList();
  }
}
