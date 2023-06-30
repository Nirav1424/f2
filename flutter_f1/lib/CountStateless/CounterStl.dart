// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CountStl extends StatelessWidget {
  CountStl({super.key});

  ValueNotifier<int> number = ValueNotifier<int>(0);
  ValueNotifier<bool> togle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    // print('build');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: togle,
                builder: (context, value, child) {
                  return TextFormField(
                    obscureText: togle.value,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffix: InkWell(
                          onTap: () {
                            togle.value = !togle.value;
                          },
                          child: togle.value
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        )),
                  );
                }),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) {
                return Text(
                  number.value.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
