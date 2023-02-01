import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'lista_transaction.dart';

class TransactionUsers extends StatefulWidget {
  TransactionUsers({super.key});
  final List<Transaction> _transaction = [
    Transaction(
        date: DateTime.now(),
        id: 't1',
        title: ' Nova Camisa do corinthians',
        value: 280.76),
    Transaction(
        date: DateTime.now(), id: 't2', title: 'Conta de Luz', value: 110.2)
  ];

  @override
  State<TransactionUsers> createState() => _TransactionUsersState();
}

class _TransactionUsersState extends State<TransactionUsers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(trasaction: _ )
      ],
    )
}
}