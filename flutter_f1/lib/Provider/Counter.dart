import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CountProvider.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final countProvider = Provider.of<CountProvider>(context, listen: false);

    Timer.periodic(const Duration(microseconds: 0), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
        return Text(
          value.count.toString(),
          style: const TextStyle(
            fontSize: 50,
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
