import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../../Note.dart';
import 'ThemeProvider.dart';

class ThemeDesign extends StatefulWidget {
  const ThemeDesign({super.key});

  @override
  State<ThemeDesign> createState() => _ThemeDesignState();
}

class _ThemeDesignState extends State<ThemeDesign> {
  @override
  Widget build(BuildContext context) {
          final themeChanger = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const FavouritePage(),
          //         ));
          //   },
          //   icon: const Icon(Icons.favorite),
          // )
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top:60.0),
          child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('light Mode'),
              value: ThemeMode.light ,
               groupValue: themeChanger.themeMode,
                onChanged:themeChanger.setTheme,
                
                ),
                 RadioListTile<ThemeMode>(
              title: const Text('dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
            ),
             RadioListTile<ThemeMode>(
              title: const Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
            ),
            const SizedBox(height: 10),
            const Icon(Icons.favorite)
        
          ],
          
              ),
        ),
      ),
      // body: const NoteData(),
      floatingActionButton: FloatingActionButton(
         onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteScreen()));
        },
      child: const Icon(Icons.add),),
    );
    
  }
}