import 'package:flutter/material.dart';
import 'package:news_app/data/fetchingData.dart';
class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String authorName;
  final String title;
  final String publishTime;
  const NewsItem
      ({super.key,
    required this.imageUrl,
    required this.authorName,
    required this.title,
    required this.publishTime});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Text(authorName,style:theme.textTheme.headlineSmall?.
          copyWith(color: const Color(0xFF79828B)),textAlign: TextAlign.start,),
        Text(title,style:theme.textTheme.displayMedium?.copyWith(color: const Color(0xFF42505C)),),
         // Text(publishTime,style: theme.textTheme.headlineSmall?.copyWith(color: const Color(0xFF79828B)),textAlign: TextAlign.end,),
        ],
      ),
    );
  }
}
