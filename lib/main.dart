import 'package:counter_app/pages/counter_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material app quitar const
      title: 'Contador',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      home: CounterScreen(), //control + . para abir el imporador de libreria
    );
  }
}
