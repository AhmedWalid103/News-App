import 'package:flutter/material.dart';
import 'package:news_app/models/source_model.dart';
import 'package:news_app/modules/theme/color_palette.dart';
class TabBarItems extends StatelessWidget {
  bool isSelected;
  Source source;
   TabBarItems({super.key,required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
      decoration: BoxDecoration(
        color:isSelected?ColorPalette.secondaryColor :ColorPalette.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(source.name,style: theme.textTheme.displaySmall?.copyWith(color:isSelected?ColorPalette.primaryColor:ColorPalette.secondaryColor),),
    );
  }
}
