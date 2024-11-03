import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelector extends ConsumerWidget {
  final Category category;
  final bool isSelected;

  const CategorySelector(
      {super.key, required this.category, required this.isSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () =>
          ref.read(selectedCategoryProvider.notifier).selectCategory(category),
      child: Text(
        category.name ?? "",
        style: GoogleFonts.raleway(
          fontSize: 15,
          color: isSelected ? Colors.black : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : null,
        ),
      ),
    );
  }
}
