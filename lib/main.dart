import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:provider_example/pages/home.dart';
import 'package:provider_example/providers/heroesinfo.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => HeroesInfo(),
      child: MaterialApp(
        title: 'Provider',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage()
        },
      ),
    );
  }
}