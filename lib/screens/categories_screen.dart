import 'package:flutter/material.dart';
import 'package:meals_app_vf/data/dummy_data.dart';
import 'package:meals_app_vf/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // ...availableCategories.map(
          //   (category) => CategoryGridItem(category: category),
          // )
          for (final element in availableCategories)
            CategoryGridItem(category: element),
        ],
      ),
    );
  }
}
