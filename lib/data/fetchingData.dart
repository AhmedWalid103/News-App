import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/constants.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/source_model.dart';
class Fetchingdata
{
static Future<List<Source>> fetchData(String categoryId) async
 {
  var url= Uri.https(
    Constants.domain,
    "/v2/top-headlines/sources",
     {
       "apiKey":Constants.apiKey,
       "category":categoryId,
     }
   );

  final response= await http.get(url);
   if(response.statusCode==200)
     {
       var data = jsonDecode(response.body);
    SourceModel source= SourceModel.fromJson(data);
    return source.sources;

     } else {
     // If the server did not return a 200 OK response,
     // then throw an exception.
     throw Exception('Failed to get sources');
   }
 }

static Future<List<Article>>fetchArticlesData(String sourceId)
async {
  var url=Uri.https(
      Constants.domain,
      "/v2/top-headlines",
      {
        "apiKey":Constants.apiKey,
        "sources":sourceId
      }
  );
  final response = await http.get(url);
  if(response.statusCode==200)
  {
    var data =jsonDecode(response.body);
    ArticleModel article =ArticleModel.fromJson(data);
    return article.articles;
  }else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to get Articles');
  }
}
}

