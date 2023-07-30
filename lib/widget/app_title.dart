import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constants.dart';
import 'package:pokedex_app/constant/ui_helper.dart';

class AppTitle extends StatelessWidget {
  final String pokeballImageUrl = 'assets/images/pokeball.png';
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.appTitleWidgetHeight,
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.defaultPadding,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.title, style: Constants.titleTextStyle),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeballImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
