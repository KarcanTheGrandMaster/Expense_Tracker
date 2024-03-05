import 'package:uuid/uuid.dart';
import 'package:tr'
const uuid = Uuid();

enum Category { Food, Travel, Fun, Work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
