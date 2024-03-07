import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('dd MM yyyy');

const uuid = Uuid();

enum Category { Home, Store, Vehicle, Land }

const categoryIcons = {
  Category.Home: Icons.apartment_sharp,
  Category.Store: Icons.add_business,
  Category.Vehicle: Icons.airport_shuttle_sharp,
  Category.Land: Icons.landscape_rounded
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
