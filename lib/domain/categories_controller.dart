import 'package:biteflavor/data/categories_repository.dart';
import 'package:biteflavor/models/category.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<Category>> categories(Ref ref) async {
  try {
    final categories =
        await ref.watch(categoriesRepositoryProvider).fetchCategories();
    return [Category.allCategory, ...categories];
  } catch (e) {
    ErrorToast.showToast(message: e.toString());
    return [];
  }
}

@Riverpod(keepAlive: true)
Future<List<Category>> mainCategories(Ref ref) async {
  try {
    final categories = ref.watch(categoriesProvider).value;
    return categories
            ?.where((category) => !category.isSubCategory && category.id != 1)
            .toList() ??
        [];
  } catch (e) {
    ErrorToast.showToast(message: e.toString());
    return [];
  }
}

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  Category? build() {
    try {
      final categories = ref.watch(mainCategoriesProvider).value;
      return categories?.isNotEmpty == true ? categories?.first : null;
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
      return null;
    }
  }

  void selectCategory(Category selectedCategory) {
    state = selectedCategory;
  }
}
