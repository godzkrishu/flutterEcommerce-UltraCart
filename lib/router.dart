import 'package:ecommerce/views/auth/authscreen.dart';
import 'package:flutter/material.dart';
Route<dynamic> generateRoute(RouteSettings routeSettings)
{
switch(routeSettings.name)
    {
  case AuthScreen.routeName:// name of screen
      return MaterialPageRoute(builder: (_)=>AuthScreen());// send to that screen
  default:
    return MaterialPageRoute(builder: (_)=>Scaffold(body: Text("hello route"),));

    }
}