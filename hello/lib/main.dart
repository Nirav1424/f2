// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'f2.dart';
// import 'package:untitled/app2/container_cone.dart';
// import 'package:untitled/app2/f2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: f1(),
    );
  }
}

class f1 extends StatefulWidget {
  const f1({Key? key}) : super(key: key);

  @override
  State<f1> createState() => _f1State();
}

class _f1State extends State<f1> {
  bool chocolatecone = false;
  bool kingCone = false;
  bool VanillaCone = false;
  bool SundaeCone = false;
  bool StrawberryCone = false;
  bool GreenpistaCone = false;
  bool ThreeScoopCone = false;
  bool RainbowCone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 220,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 320,
                            width: 180,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.pink,
                                Colors.pinkAccent,
                              ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      'https://th.bing.com/th/id/R.dbd7a61c8f8d292e49b1c22f6c7dc169?rik=hgO2bd%2bj1vjIEg&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f3%2fIce-Cream-Cone-Transparent-PNG.png&ehk=M7GFsRQk7Hrw1oRgzsGwEy8CIFUcjLljIJwAl%2fFCXRw%3d&risl=1&pid=ImgRaw&r=0'),
                                  height: 180,
                                  width: 180,
                                ),
                                Text(
                                  "Chocolate Cone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                                CheckboxListTile(
                                  value: chocolatecone,
                                  title: Row(
                                    children: [
                                      Text('Rs.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      Text("100",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  activeColor: Colors.black,
                                  onChanged: (icecream) {
                                    setState(() {
                                      chocolatecone = icecream!;
                                    });
                                  },
                                ),
                              ],
                            )),
                        Container(
                            height: 320,
                            width: 180,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.pink,
                                Colors.deepPurple,
                              ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      'https://www.freepnglogos.com/uploads/ice-cream-png/ice-cream-png-vanilla-king-cone-good-humor-25.png'),
                                  height: 180,
                                  width: 180,
                                ),
                                Text(
                                  "king Cone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                                CheckboxListTile(
                                  value: kingCone,
                                  title: Row(
                                    children: [
                                      Text('Rs.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      Text("120",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  activeColor: Colors.black,
                                  onChanged: (icecream) {
                                    setState(() {
                                      kingCone = icecream!;
                                    });
                                  },
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 280,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      'https://openclipart.org/image/2400px/svg_to_png/176487/icecream_cone.png'),
                                  height: 180,
                                  width: 180,
                                ),
                                Text(
                                  "Vanilla Cone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                                CheckboxListTile(
                                  value: VanillaCone,
                                  title: Row(
                                    children: [
                                      Text('Rs.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      Text("80",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  activeColor: Colors.black,
                                  onChanged: (icecream) {
                                    setState(() {
                                      VanillaCone = icecream!;
                                    });
                                  },
                                )
                              ],
                            )),
                        Container(
                            height: 280,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/originals/b0/8e/a7/b08ea7ca11a13e853df3ba05e151ad64.png'),
                                  height: 180,
                                  width: 180,
                                ),
                                Text(
                                  "Sundae Cone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                                CheckboxListTile(
                                  value: SundaeCone,
                                  title: Row(
                                    children: [
                                      Text('Rs.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      Text("150",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  activeColor: Colors.black,
                                  onChanged: (icecream) {
                                    setState(() {
                                      SundaeCone = icecream!;
                                    });
                                  },
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container(
                    //         height: 280,
                    //         width: 180,
                    //         decoration: BoxDecoration(
                    //           color: Colors.pinkAccent,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             Image(
                    //               image: NetworkImage(
                    //                   'https://www.pngmart.com/files/3/Ice-Cream-Cone-PNG-Photos-279x279.png'),
                    //               height: 180,
                    //               width: 180,
                    //             ),
                    //             Text(
                    //               "Strawberry Cone",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold),
                    //               textAlign: TextAlign.end,
                    //             ),
                    //             CheckboxListTile(
                    //               value: StrawberryCone,
                    //               title: Row(
                    //                 children: [
                    //                   Text('Rs.',style: TextStyle(color: Colors.white,fontSize: 20)),
                    //                   Text("110",
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 30,
                    //                           fontWeight: FontWeight.bold)),
                    //                 ],
                    //               ),
                    //               activeColor: Colors.brown,
                    //               onChanged: (icecream) {
                    //                 setState(() {
                    //                   StrawberryCone = icecream!;
                    //                 });
                    //               },
                    //             )
                    //           ],
                    //         )),
                    //     Container(
                    //         height: 280,
                    //         width: 180,
                    //         decoration: BoxDecoration(
                    //           color: Colors.pinkAccent,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             Image(
                    //               image: NetworkImage(
                    //                   'https://www.godairyfree.org/wp-content/uploads/2020/06/product-daily-harvest-mint.png'
                    //               ),
                    //               height: 180,
                    //               width: 180,
                    //             ),
                    //             Text(
                    //               "Greenpista Cone",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold),
                    //               textAlign: TextAlign.end,
                    //             ),
                    //             CheckboxListTile(
                    //               value: GreenpistaCone,
                    //               title: Row(
                    //                 children: [
                    //                   Text('Rs.',style: TextStyle(color: Colors.white,fontSize: 20)),
                    //                   Text("110",
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 30,
                    //                           fontWeight: FontWeight.bold)),
                    //                 ],
                    //               ),
                    //               activeColor: Colors.brown,
                    //               onChanged: (icecream) {
                    //                 setState(() {
                    //                   GreenpistaCone = icecream!;
                    //                 });
                    //               },
                    //             )
                    //           ],
                    //         )),
                    //   ],
                    // ),
                    // SizedBox(height: 20,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container(
                    //         height: 280,
                    //         width: 180,
                    //         decoration: BoxDecoration(
                    //           color: Colors.pinkAccent,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             Image(
                    //               image: NetworkImage(
                    //                   'https://freepngimg.com/thumb/ice%20cream/4-ice-cream-png-image.png'),
                    //               height: 180,
                    //               width: 180,
                    //             ),
                    //             Text(
                    //               "ThreeScoop Cone",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold),
                    //               textAlign: TextAlign.end,
                    //             ),
                    //             CheckboxListTile(
                    //               value: ThreeScoopCone,
                    //               title: Row(
                    //                 children: [
                    //                   Text('Rs.',style: TextStyle(color: Colors.white,fontSize: 20)),
                    //                   Text("120",
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 30,
                    //                           fontWeight: FontWeight.bold)),
                    //                 ],
                    //               ),
                    //               activeColor: Colors.brown,
                    //               onChanged: (icecream) {
                    //                 setState(() {
                    //                   ThreeScoopCone = icecream!;
                    //                 });
                    //               },
                    //             )
                    //           ],
                    //         )),
                    //     Container(
                    //         height: 280,
                    //         width: 180,
                    //         decoration: BoxDecoration(
                    //           color: Colors.pinkAccent,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             Image(
                    //               image: NetworkImage(
                    //                   'https://www.dlf.pt/dfpng/maxpng/185-1859445_ice-cream-vector-png.png'
                    //               ),
                    //               height: 180,
                    //               width: 180,
                    //             ),
                    //             Text(
                    //               "Rainbow Cone",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold),
                    //               textAlign: TextAlign.end,
                    //             ),
                    //             CheckboxListTile(
                    //               value: RainbowCone,
                    //               title: Row(
                    //                 children: [
                    //                   Text('Rs.',style: TextStyle(color: Colors.white,fontSize: 20)),
                    //                   Text("100",
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 30,
                    //                           fontWeight: FontWeight.bold)),
                    //                 ],
                    //               ),
                    //               activeColor: Colors.brown,
                    //               onChanged: (icecream) {
                    //                 setState(() {
                    //                   RainbowCone = icecream!;
                    //                 });
                    //               },
                    //             )
                    //           ],
                    //         )),
                    //   ],
                    // ),
                    // SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        container_cone(
                          container_color: Colors.purpleAccent,
                          container_image:
                              'https://www.dlf.pt/dfpng/maxpng/185-1859445_ice-cream-vector-png.png',
                          container_text: 'Cone',
                          chack_value: chocolatecone,
                          card_value: chocolatecone,
                          card_changed: (icecream) {
                            setState(() {
                              chocolatecone = icecream!;
                            });
                          },
                          Onpressd: () {
                            // chocolatecone;
                          },
                          // Onpressd: () {
                          // // Navigator.of(context).push(MaterialPageRoute(builder: (context) => f2(),));

                          // },
                        ),
                        // container_cone(container_color: Colors.purpleAccent,
                        //   container_image: 'https://www.dlf.pt/dfpng/maxpng/185-1859445_ice-cream-vector-png.png',
                        //   container_text:'Cone',
                        //   chack_value: kingCone,
                        //   Onpressd: () {
                        //
                        //   },
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.pink,
                    Colors.redAccent,
                    Colors.red,
                    Colors.pinkAccent
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                Icon(Icons.icecream_outlined, size: 80, color: Colors.white),
                Text(
                  '  Ice_Cream',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
