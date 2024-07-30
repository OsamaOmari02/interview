import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interview/page2.dart';
import 'package:interview/provider1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Provider1(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(40),
          children: [
            Text('Hello'),
            Icon(Icons.waves),
            Container(
              height: 20,
              // color: Colors.amber,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
            ),
            Icon(Icons.waves),
            GridView(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                Text('Hello'),
                Text('Hello'),
                Text('Hello'),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 40,
                  color: Colors.green,
                ),
                Text('space it!'),
                Container(
                  height: 20,
                  width: 40,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            child: Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page2(),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
