import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:provider_example/widgets/super_floatingaction.dart';
import 'package:provider_example/widgets/super_text.dart';
import 'package:provider_example/providers/heroesinfo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: Center(
        child: SuperText()
      ),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
