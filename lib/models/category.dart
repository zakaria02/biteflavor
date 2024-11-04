import 'package:biteflavor/uios/category_uio.dart';
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

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  static const Category allCategory = Category(
    id: -1,
    name: "All",
    parent: 0,
  );

  CategoryUio toCategoryUio() =>
      CategoryUio(id: id, name: name, parent: parent);
}
