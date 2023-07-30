import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constants.dart';
import 'package:pokedex_app/constant/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/view/detail_page_view.dart';
import 'package:pokedex_app/widget/poke_img_and_ball.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => DetailPageView(pokemon: pokemon)),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type?[0] ?? ''),
        child: Padding(
          padding: UIHelper.defaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? 'N/A', style: Constants.pokemonNameTextStyle),
              Chip(label: Text(pokemon.type?[0] ?? 'N/A', style: Constants.typeChipTextStyle)),
              Expanded(child: PokeImageAndBall(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
