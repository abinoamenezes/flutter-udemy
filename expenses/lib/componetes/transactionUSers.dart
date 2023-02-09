import 'dart:math';

import 'package:flutter/material.dart';
import 'insert_transaction.dart';
import '../models/transaction.dart';
import 'lista_transaction.dart';

class TransactionUsers extends StatefulWidget {
  TransactionUsers({super.key});

  @override
  State<TransactionUsers> createState() => _TransactionUsersState();
}

class _TransactionUsersState extends State<TransactionUsers> {
  final List<Transaction> transaction = [
    Transaction(
        date: DateTime.now(),
        id: 't1',
        title: ' Nova Camisa do corinthians',
        value: 280.76),
    Transaction(
        date: DateTime.now(), id: 't2', title: 'Conta de Luz', value: 110.2)
  ];

  addTransaction(String title, double valor) {
    final newTrasanction = Transaction(
        date: DateTime.now(),
        id: Random().nextDouble().toString(),
        title: title,
        value: valor);

    setState(() {
      transaction.add(newTrasanction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(trasaction: transaction), InsertTrasaction()],
    );
  }
}
