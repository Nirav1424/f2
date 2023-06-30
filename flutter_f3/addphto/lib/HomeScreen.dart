// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'imageController.dart';

class Circle extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  ImageController imgcontroller = Get.put(ImageController());
  Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Obx(
            () => CircleAvatar(
              radius: 80,
              backgroundImage: imgcontroller.isProfilepathPicSet.value == true
                  ? FileImage(File(imgcontroller.ProfilePicPath.value))
                      as ImageProvider
                  : NetworkImage(
                      'https://tse2.mm.bing.net/th?id=OIP.XlOycU-QOv2savuFQ4zUqQHaEo&pid=Api&P=0'),
            ),
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => botomMenu(context),
            );
          },
        ),
      ),
    );
  }

  Widget botomMenu(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'choose Any one',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  takephoto(ImageSource.camera);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.camera,
                      size: 40,
                    ),
                    SizedBox(
                        // height: 5,
                        ),
                    Text(
                      'camera',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: () {
                  takephoto(ImageSource.gallery);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.photo_size_select_actual_rounded,
                      size: 40,
                    ),
                    SizedBox(
                        // height: 5,
                        ),
                    Text(
                      'gallary',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takephoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    imgcontroller.setImage(pickedFile!.path);
    Get.back();
  }
}
