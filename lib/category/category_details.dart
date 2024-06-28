import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/category/tab_container.dart';
import 'package:news_app/model/category.dart';

import '../../model/SourceResponse.dart';
import '../model/SourceResponse.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName = 'Category Details';
  Category category;
  CategoryDetails({required this.category});
  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
        future: ApiManager.getSources(widget.category.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("Something went wrong"),
                ElevatedButton(onPressed: () {}, child: Text('Try Again'))
              ],
            );
          }

          /// server (success,error)
          if (snapshot.data?.status != 'ok') {
            /// error ,message,code
            return Column(
              children: [
                Text(snapshot.data?.message ?? ''),
                ElevatedButton(onPressed: () {}, child: Text('Try Again'))
              ],
            );
          }
          var sourcesList = snapshot.data?.sources ?? [];
          return TabContainer(sourcesList: sourcesList);
        });
  }
}
