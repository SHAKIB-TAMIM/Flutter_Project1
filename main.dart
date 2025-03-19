import 'package:flutter/material.dart';
//import 'id_card.dart'; // Assuming IdCard is another widget you want to navigate to
//import 'demo.dart';    // Import Demo widget
import 'functionalities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const Demo(),
    //  home: const IdCard(),// Change this line to point to Demo instead of IdCard
      home :const Functionalities(),

    );
  }
}
