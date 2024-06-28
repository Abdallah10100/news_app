import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/newsResponse.dart';
import 'package:news_app/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(18)
          //   ),
          //   child: Image.network(news.urlToImage??''),
          // )
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? "",
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: 8),
          Text(news.author ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: MyTheme.grayColor)),
          SizedBox(height: 8),
          Text(news.title ?? "",style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 8),
          Text(news.publishedAt ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: MyTheme.grayColor),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
