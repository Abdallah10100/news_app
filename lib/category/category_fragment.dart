import 'package:flutter/material.dart';
import 'package:news_app/category/category_item.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/my_theme.dart';

class CategoryFragment extends StatelessWidget {
  var categoriesList = Category.getCategories();
  Function onCategoryClick;
  CategoryFragment({required this.onCategoryClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Pick your category\nof interest',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: MyTheme.blackColor),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: categoriesList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 18, crossAxisSpacing: 18),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    onCategoryClick(categoriesList[index]);
                  },
                  child: CategoryItem(
                      category: categoriesList[index], index: index),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
