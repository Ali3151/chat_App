import 'package:chat_app/contraint.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(   
        primarySwatch: MaterialColor(0xff075e54,color),
        //primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25d366)
      ),
      debugShowCheckedModeBanner:false,
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
        
