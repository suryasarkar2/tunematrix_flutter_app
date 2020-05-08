import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutternome/grid_state.dart';
import 'package:flutternome/grid_control.dart';
import 'package:flutternome/grid.dart';
import 'package:flutternome/grid_size.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      builder: (context) => GridState(gridSize: GridSize.size),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tunematrix',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Tunematrix',
              style: TextStyle(
                fontFamily: 'Walter',
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: Colors.pinkAccent[400],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Grid(gridSize: GridSize.size),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: GridControl(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
