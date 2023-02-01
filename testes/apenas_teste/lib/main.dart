import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('olá'),
        ),
        body: Column(
          children: [
            Container(
              child: Card(
                child: Text('So teste'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
