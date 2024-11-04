import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/presentation/home/widgets/category_selector.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({super.key, required this.categories});

  final List<CategoryUio> categories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 16),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategorySelector(
            category: category,
            isSelected: category.id == ref.watch(selectedCategoryProvider)?.id,
          );
        },
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 24),
      ),
    );
  }
}
