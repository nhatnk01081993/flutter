import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text('Book'),
      ),
      body: RefreshIndicator(
          child: null,
          onRefresh: () {
            print('object');
          }),
    );
  }
}
