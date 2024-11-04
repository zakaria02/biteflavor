// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesHash() => r'60234f07e877daa27bf10a7b0cdbd65d4e5bb6df';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider = FutureProvider<List<CategoryUio>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoriesRef = FutureProviderRef<List<CategoryUio>>;
String _$mainCategoriesHash() => r'a281eb89f2752ee08f5b8fa4fe77a599314b8af1';

/// See also [mainCategories].
@ProviderFor(mainCategories)
final mainCategoriesProvider = FutureProvider<List<CategoryUio>>.internal(
  mainCategories,
  name: r'mainCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mainCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MainCategoriesRef = FutureProviderRef<List<CategoryUio>>;
String _$selectedCategoryHash() => r'cd0bbac699a7f7655be95442baa3be8f9aa51a8f';

/// See also [SelectedCategory].
@ProviderFor(SelectedCategory)
final selectedCategoryProvider =
    AutoDisposeNotifierProvider<SelectedCategory, CategoryUio?>.internal(
  SelectedCategory.new,
  name: r'selectedCategoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCategoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCategory = AutoDisposeNotifier<CategoryUio?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
