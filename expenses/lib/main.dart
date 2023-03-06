import 'package:expenses/componetes/insert_transaction.dart';
import 'package:expenses/componetes/lista_transaction.dart';
import 'package:expenses/componetes/transactionUSers.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(const ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
      home: MyHomePage(),
      theme: tema.copyWith(
          colorScheme: tema.colorScheme
              .copyWith(primary: Colors.purple, secondary: Colors.amber),
          textTheme: tema.textTheme.copyWith(
            headline6: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

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

    Navigator.of(context).pop();
  }

  _openModalFormulario(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => InsertTrasaction(submit: addTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas pessoais'),
        actions: [
          IconButton(
            onPressed: () => _openModalFormulario(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            TransactionList(trasaction: transaction),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openModalFormulario(context),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
