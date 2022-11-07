import 'package:flutter/material.dart';
import 'package:tripzz/widgets/category_list_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {
        "image": "assets/img/beaches.png",
        "title": "Beaches",
      },
      {
        "image": "assets/img/camp.png",
        "title": "Campfire",
      },
      {
        "image": "assets/img/forest.png",
        "title": "Forest",
      },
      {
        "image": "assets/img/desert.png",
        "title": "Desert",
      },
      {
        "image": "assets/img/river.png",
        "title": "River",
      },
    ];

    return SizedBox(
      height: 116,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryItem(
            margin: index > 0 ? const EdgeInsets.only(left: 8) : EdgeInsets.zero,
            title: category[index]['title'],
            image: category[index]['image'],
          );
        },
      ),
    );
  }
}
