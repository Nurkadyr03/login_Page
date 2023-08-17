

import 'package:flut_10/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent,
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 105, 227, 194)),
        //useMaterial3: true,
      ),
      home:  LoginPage(),
    );
  }
}
