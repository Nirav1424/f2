import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'CustomChange/Rounded.dart';
import 'CustomChange/Utils.dart';


class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  bool loading = false;
  final postController = TextEditingController();
  // ignore: non_constant_identifier_names
  final DatabaseRefe = FirebaseDatabase.instance.ref('post');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: postController,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: 'add notes ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
                loading: loading,
                title: 'add',
                onTap: () {
                  setState(() {
                    loading = true;
                  });
                  String id  = DateTime.now().microsecondsSinceEpoch.toString();
                 
                  DatabaseRefe.child(id).set({
                    'id': id,
                    'title': postController.text.toString(),
                  }).then((value) {
                    Utils().toastMessage('post added');
                    setState(() {
                      loading = false;
                    });
                  }).onError((error, stackTrace) {
                    // Utils().toastMessage(error.toString());
                    setState(() {
                      loading = false;
                    });
                  });
                Navigator.pop(context);
                },
                )
          ],
        ),
      ),
    );
  }
}
