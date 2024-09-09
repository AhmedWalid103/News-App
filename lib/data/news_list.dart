import 'package:flutter/material.dart';
import 'package:news_app/data/fetchingData.dart';
import 'package:news_app/models/article_model.dart';

import '../modules/theme/color_palette.dart';
import 'news_item.dart';
class NewsList extends StatefulWidget {
  final String sourceId;
  const NewsList({super.key, required this.sourceId});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: Fetchingdata.fetchArticlesData(widget.sourceId),
        builder: (context,snapshot)
    {
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
      List<Article> articleList=snapshot.data??[];
      return Expanded(child: ListView.builder(
          itemBuilder: (_,index)=>NewsItem(
            imageUrl: articleList[index].urlToImage,
            authorName: articleList[index].author,
            title: articleList[index].title,
            publishTime: articleList[index].publishedAt,
          ),
      itemCount: articleList.length,
      )
      );
    }
    );
  }
}
