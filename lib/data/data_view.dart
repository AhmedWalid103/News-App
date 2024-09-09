import 'package:flutter/material.dart';
import 'package:news_app/data/category_View.dart';
import 'package:news_app/data/fetchingData.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/source_model.dart';
import 'package:news_app/modules/layout/tab_bar_items.dart';
import 'package:news_app/modules/theme/color_palette.dart';

import '../modules/layout/item_data.dart';
class DataView extends StatefulWidget {
  final ItemData item;
  DataView({super.key, required this.item,});

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<Source>>(
      future:Fetchingdata.fetchData(widget.item.ItemId) ,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        if(snapshot.connectionState==ConnectionState.waiting)
        {
          return Center(
            child: CircularProgressIndicator(
              color: ColorPalette.primaryColor,
            ),
          );
        }
        List<Source> sourcesList=snapshot.data??[];
        return CategoryView(sourcesList: sourcesList,);
      },
    );
  }
}
