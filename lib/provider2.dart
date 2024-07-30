import 'package:flutter/material.dart';
import 'package:interview/provider1.dart';
import 'package:provider/provider.dart';

class Provider2 extends ChangeNotifier {
  TextEditingController grade = TextEditingController();

  fetchSomeData(BuildContext context) {
    Future.delayed(Duration(seconds: 2));
    var data = {
      'id': 1,
      'name': 'ali',
      'email': 'ali@gmail.com',
      'grade': grade
    };
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Text('fetched successfully'),
      ),
    );
    context.read<Provider1>().counter++;
  }
}
