import 'package:flutter/material.dart';
import 'package:kids_trakr/feature/schedule/widgets/chip_menu.dart';
import 'package:kids_trakr/feature/schedule/widgets/header_schedule.dart';
import 'package:kids_trakr/feature/schedule/schedule_controller.dart';
import 'package:kids_trakr/feature/schedule/widgets/tile_menu.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';
import 'package:get/get.dart';

class SchedulePage extends GetView<ScheduleController> {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Schedule',
        showBackButton: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const HeaderSchedule(),
              ChipMenu(controller: controller),
            ],
          ),
          DraggableScrollableSheet(
            controller: controller.sheetController,
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 1.0,
            snap: true,
            builder: (context, scrollController) {
              return TileMenu(
                scrollController: scrollController,
                controller: controller,
              );
            },
          ),
        ],
      ),
    );
  }
}
