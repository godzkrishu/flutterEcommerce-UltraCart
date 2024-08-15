import 'package:ecommerce/constant/constantvalues.dart';
import 'package:ecommerce/router.dart';
import 'package:ecommerce/views/auth/authscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings)=>generateRoute(settings),// call the router.dart funtion every time
      title: 'Ultra Cart',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        colorScheme: ColorScheme.light(
            primary: GlobalVariable().primaryColor,
          secondary: Colors.orange, // Secondary color for links, etc.
        ),
        scaffoldBackgroundColor: Colors.white,

        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.orange,
            title:Text("UltraCart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            centerTitle: true, // make tittle in center
          ),
          body:AuthScreen(),
      )
    );
  }
}
