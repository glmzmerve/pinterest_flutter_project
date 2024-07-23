import 'package:flutter/material.dart';
import 'package:pinterest_flutter/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinterest',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: const anasayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
  
 
}




