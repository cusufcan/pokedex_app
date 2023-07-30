import 'package:flutter/material.dart';
import 'package:pokedex_app/widget/app_title.dart';

import '../widget/pokemon_list.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
