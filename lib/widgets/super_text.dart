import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:provider_example/providers/heroesinfo.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          heroesInfo.heroe,
          style: TextStyle(
            color: (heroesInfo.heroe == 'Ironman') ? Colors.red : Colors.blue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Hack'
          ),
        )
      ],
    );
  }
}
