import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/model/message_item.dart';

class MessageController extends BaseController {
  final List<MessageItem> messages = [
    MessageItem(
      subject: 'Mathematics Assignment Due',
      name: 'Mr. Smith (Math Teacher)',
      onTap: () {},
    ),
    MessageItem(
      subject: 'Upcoming School Excursion',
      name: 'Mrs. Johnson (Principal)',
      onTap: () {},
    ),
    MessageItem(
      subject: 'Science Project Grouping',
      name: 'Dr. Banner (Science Teacher)',
      onTap: () {},
    ),
    MessageItem(
      subject: 'Mid-term Report Card',
      name: 'Admin Office',
      onTap: () {},
    ),
  ];
}