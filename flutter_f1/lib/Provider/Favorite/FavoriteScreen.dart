import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FavouritePro.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
//  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteItem>(
                      builder: (context, value, child) {
                    return ListTile(
                      title: Text('item ${index+1}'),
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.remove(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      trailing: Icon(value.selectedItem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
