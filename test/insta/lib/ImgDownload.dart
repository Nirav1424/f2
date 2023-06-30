import 'package:flutter/material.dart';


class ImgDownLoad extends StatefulWidget {
   ImgDownLoad({super.key,required this.img});
 final  String img;
  @override
  State<ImgDownLoad> createState() => _ImgDownLoadState();
}

class _ImgDownLoadState extends State<ImgDownLoad> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network(widget.img));
  }
}
