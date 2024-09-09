import 'package:flutter/material.dart';
import 'package:news_app/data/news_item.dart';
import 'package:news_app/data/news_list.dart';

import '../models/source_model.dart';
import '../modules/layout/tab_bar_items.dart';
import '../modules/theme/color_palette.dart';
import 'fetchingData.dart';
class CategoryView extends StatefulWidget {
 final List<Source> sourcesList;
  const CategoryView({super.key, required this.sourcesList});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length:widget.sourcesList.length ,
            child: TabBar(
              indicatorPadding: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 0),
              labelPadding: const EdgeInsets.symmetric(horizontal: 6.0),
              isScrollable: true,
              indicator: const BoxDecoration(),
              dividerColor: Colors.transparent,
              onTap: (index)
              {
                setState(() {
                  selectedIndex=index;
                });
              },
              tabs:widget.sourcesList.map((element)=>TabBarItems(
                source: element,
                isSelected:selectedIndex==widget.sourcesList.indexOf(element),
              )).toList() ,) ),
      NewsList(sourceId: widget.sourcesList[selectedIndex].id),
      ],
    );
  }
}
