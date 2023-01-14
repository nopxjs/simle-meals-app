import 'package:flutter/material.dart';
import 'package:mealapp/category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisExtent: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(catData.titlee, catData.color),
            )
            .toList(),
      ),
    );
  }
}
