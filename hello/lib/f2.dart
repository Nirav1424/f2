// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container_cone extends StatefulWidget {
  final Color container_color;
  final container_image;
  final container_text;
  late final chack_value;
  final VoidCallback Onpressd;
  late final card_changed;
  final card_value;

   // ignore: prefer_const_constructors_in_immutables
   container_cone({
    Key? key,
    required this.container_color,
    required this.container_image,
    required this.container_text,
    required this.chack_value,
    required this.Onpressd,
    required this.card_changed,
    required this.card_value,
  }) : super(key: key);

  @override
  State<container_cone> createState() => _container_coneState();
}

class _container_coneState extends State<container_cone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 180,
      decoration: BoxDecoration(
        color: widget.container_color,
        borderRadius: BorderRadius.circular(20),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image(
          image: NetworkImage(widget.container_image),
          height: 180,
          width: 180,
        ),
        Text(
          widget.container_text,
          style: const TextStyle(
              color: CupertinoColors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        CheckboxListTile(
          value: widget.card_value,
          title: const Row(
            children: [
              Text('Rs.', style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("100",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          activeColor: Colors.black,
          onChanged: (icecream) {
            widget.chack_value = icecream!;
          },
        ),
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: widget.Onpressd,
            child: const Text(
              "ADD",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
      ]),
    );
  }
}
