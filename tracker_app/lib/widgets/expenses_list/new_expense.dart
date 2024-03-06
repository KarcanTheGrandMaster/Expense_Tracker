import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _AmountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _AmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            //keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("Title"),
            ),
          ),
          TextField(
            controller: _AmountController,
            maxLength: 15,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: " \$",
              label: Text("Amount"),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
