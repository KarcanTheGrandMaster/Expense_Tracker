import 'package:flutter/material.dart';
import 'package:tracker_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    //Todo : implement createState
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Beer Plus',
        amount: 250.0,
        date: DateTime.now(),
        category: Category.Fun),
    Expense(
        title: 'Pizza ',
        amount: 100,
        date: DateTime.now(),
        category: Category.Fun),
  ];

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      body: Column(
        children: const [
          Text('ddddddd'),
          Text('dddddddd'),
        ],
      ),
    );
  }
}
