import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp utility'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "9033851013",
                  labelText: "Enter phone number"),
            ),
            ElevatedButton(
              onPressed: () => {sendMessage(context)},
              child: const Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }

  final snackbar = const SnackBar(
    content: Text("Enter valid mobile number"),
    backgroundColor: Colors.red,
  );

  void sendMessage(context) {
    var txt = _controller.text;
    if (txt.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      _launchURL(txt);
    }
  }

  final _url = "https://api.whatsapp.com/send?phone=91";
  // ignore: deprecated_member_use
  void _launchURL(txt) async => await canLaunch(_url + txt)
      // ignore: deprecated_member_use
      ? await launch(_url + txt)
      : throw 'Could not launch $_url';
}
