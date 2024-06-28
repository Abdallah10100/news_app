import 'package:flutter/material.dart';
import 'package:news_app/my_theme.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "Language",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: MyTheme.blackColor),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: MyTheme.blackColor),
                ),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
