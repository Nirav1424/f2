import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  bool _flag = false;
  final _controller = TextEditingController();
  List<String> call = ["nirav", "jay", "aniket", "meet"];
  List<String> num = [
    "+919033851013",
    "+919316555201",
    "+918000315400",
    "+918849765094"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.only(top: 200, left: 10, right: 10),
            child: Center(
              child: Container(
                child: ListView.separated(
                    itemCount: call.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ElevatedButton(
                          onPressed: () {
                            FlutterPhoneDirectCaller.callNumber(num[index]);
                            change();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _flag ? Colors.greenAccent : Colors.blue,
                          ),
                          child: ListTile(
                            leading: const Icon(Icons.person),
                            trailing: const Icon(Icons.call),
                            title: Text(_flag ? 'calling...' : call[index]),
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5)),
                      );
                    }),
              ),
            )),
      ),
    );
  }

  void change() {
    _flag = !_flag;
  }
}
