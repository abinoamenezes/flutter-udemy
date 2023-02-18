import 'package:flutter/material.dart';

class InsertTrasaction extends StatefulWidget {
  InsertTrasaction({super.key, required this.submit});

  final void Function(String title, double value) submit;

  @override
  State<InsertTrasaction> createState() => _InsertTrasactionState();
}

class _InsertTrasactionState extends State<InsertTrasaction> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _submeterTransaction() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.submit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Título'),
              onSubmitted: (value) => _submeterTransaction(),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
              onSubmitted: (value) => _submeterTransaction(),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: _submeterTransaction,
                    child: const Text('Nova transação',
                        style: TextStyle(color: Colors.purple))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
