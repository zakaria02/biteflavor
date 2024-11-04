import 'package:hive/hive.dart';

part 'category_uio.g.dart';

@HiveType(typeId: 2)
class CategoryUio {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final int? parent;

  const CategoryUio({this.id, this.name, this.parent});

  bool get isSubCategory => parent != null && parent != 0;

  static const List<CategoryUio> mock = [
    CategoryUio(id: 1, name: "Category 1", parent: 0),
    CategoryUio(id: 2, name: "Category 2", parent: 0),
    CategoryUio(id: 3, name: "Category 3", parent: 0),
    CategoryUio(id: 4, name: "Category 4", parent: 0),
    CategoryUio(id: 5, name: "Category 5", parent: 0),
  ];
}
