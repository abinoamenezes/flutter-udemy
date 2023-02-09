import 'package:flutter/material.dart';

class InsertTrasaction extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  InsertTrasaction({super.key, required this.submit});

  final void Function(String title, double value) submit;

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
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      final title = titleController.text;
                      final value =
                          double.tryParse(valueController.text) ?? 0.0;
                      submit(title, value);
                    },
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
