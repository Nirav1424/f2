import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


import 'CustomChange/Utils.dart';
import 'Note.dart';

class NoteData extends StatefulWidget {
  const NoteData({super.key});

  @override
  State<NoteData> createState() => _NoteDataState();
}

class _NoteDataState extends State<NoteData> {
  final ref = FirebaseDatabase.instance.ref('post');
  // ignore: non_constant_identifier_names
  final SearchController = TextEditingController();
  final editController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
                controller: SearchController,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {
                  setState(() {});
                }),
          ),
          Expanded(
              child: StreamBuilder(
                  stream: ref.onValue,
                  builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      Map<dynamic, dynamic> map =
                          snapshot.data!.snapshot.value as dynamic;

                      List<dynamic> list = [];
                      list.clear();
                      list = map.values.toList();

                      return ListView.builder(
                          itemCount: snapshot.data!.snapshot.children.length,
                          itemBuilder: (context, index) {
                            final title = list[index]['title'];

                            if (SearchController.text.isEmpty) {
                              return ListTile(
                                title: Text(list[index]['title']),
                                subtitle: Text(list[index]['id']),
                                trailing: PopupMenuButton(
                                    icon: Icon(Icons.more_vert),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            value: 1,
                                            child: ListTile(
                                              onTap: () {
                                                Navigator.pop(context);
                                                showMYDiglog(
                                                    title, list[index]['id']);
                                              },
                                              leading: Icon(Icons.edit),
                                              title: const Text('edit'),
                                            ),
                                          ),
                                          PopupMenuItem(
                                            value: 2,
                                            child: ListTile(
                                              onTap: () {
                                                Navigator.pop(context);

                                                ref
                                                    .child(list[index]['id'])
                                                    .remove()
                                                    .then((value) {})
                                                    .onError(
                                                        (error, stackTrace) {
                                                  Utils().toastMessage(
                                                      error.toString());
                                                });
                                              },
                                              leading: const Icon(
                                                  Icons.delete_outline),
                                              title: const Text('Delete'),
                                            ),
                                          ),
                                        ]),
                              );
                            } else if (title.toLowerCase().contains(
                                SearchController.text
                                    .toLowerCase()
                                    .toLowerCase())) {
                              return ListTile(
                                title: Text(list[index]['title']),
                                subtitle: Text(list[index]['id']),
                              );
                            } else {
                              return Container();
                            }
                          });
                    }
                  })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> showMYDiglog(String title, String id) async {
    editController.text = title;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('update'),
            content: Container(
              child: TextField(
                controller: editController,
                decoration: InputDecoration(
                  hintText: 'update',
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ref.child(id).update({
                      'title': editController.text.toLowerCase(),
                    }).then((value) {
                      Utils().toastMessage('value updated');
                    }).onError((error, stackTrace) {
                      Utils().toastMessage(error.toString());
                    });
                  },
                  child: Text('Update'))
            ],
          );
        });
  }
}

//  Expanded(
//               child: FirebaseAnimatedList(
//                   query: ref,
//                   itemBuilder: (context, snapshot, animation, index) {
//                     return ListTile(
//                       title: Text(snapshot.child('title').value.toString()),
//                     );
//                   // })),
