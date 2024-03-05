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
        title: 'Fathi Kara',
        amount: 12250.0,
        date: DateTime.now(),
        category: Category.Land),
    Expense(
        title: 'Zekeriya assa ',
        amount: 13100,
        date: DateTime.now(),
        category: Category.Home),
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
