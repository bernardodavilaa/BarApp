import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar App'),
      ),
      body: Center(
        child: Text(
          'Texto na página em branco',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
