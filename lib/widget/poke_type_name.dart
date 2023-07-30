import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constants.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeNameTypeWidget extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameTypeWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(pokemon.name ?? 'N/A', style: Constants.pokemonNameTextStyle)),
              Text('#${pokemon.num}', style: Constants.pokemonNameTextStyle),
            ],
          ),
          SizedBox(height: 0.02.sh),
          Chip(label: Text(pokemon.type?.join(' , ') ?? 'N/A', style: Constants.typeChipTextStyle)),
        ],
      ),
    );
  }
}
