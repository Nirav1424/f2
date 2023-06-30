// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_insta/flutter_insta.dart';

import 'ImgDownload.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  FlutterInsta flutterInsta =
      FlutterInsta(); // create instance of FlutterInsta class
  TextEditingController usernameController = TextEditingController();
  TextEditingController reelController = TextEditingController();
  TabController? tabController;

  String? username, followers = " ", following, bio, website, profileimage;
  bool pressed = false;
  bool downloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instagram '),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: TextField(
                    decoration:
                        InputDecoration(contentPadding: EdgeInsets.all(10)),
                    controller: usernameController,
                  ),
                ),
                ElevatedButton(
                  child: Text("Print Details"),
                  onPressed: () async {
                    setState(() {
                      pressed = true;
                    });

                    printDetails(usernameController.text); //get Data
                  },
                ),
                pressed
                    ? SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                            child: Container(
                              margin: EdgeInsets.all(15),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ImgDownLoad(img : '${flutterInsta.imgurl}'),
                                          ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.network(
                                        "$profileimage",
                                        width: 120,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Text(
                                    "$username",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "$followers\nFollowers",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "$following\nFollowing",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Text(
                                    "$bio",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  // Padding(padding: EdgeInsets.only(top: 10)),
                                  // Text(
                                  //   "$website",
                                  //   style: TextStyle(
                                  //     fontSize: 15,
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ));
  }

  Future printDetails(String username) async {
    await flutterInsta.getProfileData(username);
    setState(() {
      this.username = flutterInsta.username; //username
      this.followers = flutterInsta.followers; //number of followers
      this.following = flutterInsta.following; // number of following
      this.website = flutterInsta.website; // bio link
      this.bio = flutterInsta.bio; // Bio
      this.profileimage = flutterInsta.imgurl; // Profile picture URL
      // print(followers);
    });
  }
}
