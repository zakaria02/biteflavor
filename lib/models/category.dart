import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const Category._();
  const factory Category({
    int? id,
    String? name,
    int? parent,
  }) = _Category;

  bool get isSubCategory => parent != null && parent != 0;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  static const List<Category> mock = [
    Category(id: 1, name: "Category 1", parent: 0),
    Category(id: 2, name: "Category 2", parent: 0),
    Category(id: 3, name: "Category 3", parent: 0),
    Category(id: 4, name: "Category 4", parent: 0),
    Category(id: 5, name: "Category 5", parent: 0),
  ];

  static const Category allCategory = Category(
    id: -1,
    name: "All",
    parent: 0,
  );
}
