import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FavouritePro.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final favorite = Provider.of<FavouriteItem>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favorite.selectedItem.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteItem>(
                      builder: (context, value, child) {
                    return ListTile(
                      title: Text('item ${index + 1}'),
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
