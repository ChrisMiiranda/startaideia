import 'package:flutter/material.dart';
import 'package:teste_startaiedeia/res/custom_colors.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("StartaIdeia", style: TextStyle(fontSize: 18, letterSpacing: 1),),
        ),
        SizedBox(width: 8),
        Text(
          'Entrevista',
          style: TextStyle(
            color: CustomColors.firebaseYellow,
            fontSize: 18,
          ),
        ),
        Text(
          ' Teste',
          style: TextStyle(
            color: CustomColors.firebaseOrange,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}