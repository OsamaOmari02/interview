import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/provider1.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 100,
          ),
          TextFormField(
              controller: text,
              decoration: InputDecoration(
                  label: Text('type here'), border: OutlineInputBorder())),
          SizedBox(
            height: 50,
          ),
          Container(height: 20, width: 50, color: Colors.amber),
          Icon(Icons.close),
          Container(height: 20, width: 50, color: Colors.amber),
          SizedBox(
            height: 100,
          ),
          Container(height: 20, width: 50, color: Colors.amber),
          SizedBox(
            height: 100,
          ),
          Text(
            context.read<Provider1>().counter.toString(),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<Provider1>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
