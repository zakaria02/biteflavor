import 'package:biteflavor/models/category.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_repository.g.dart';

@Riverpod(keepAlive: true)
class CategoriesRepository extends _$CategoriesRepository {
  @override
  CategoriesApi build() {
    return CategoriesApi(ref.watch(clientProvider));
  }
}

class CategoriesApi {
  final Dio _client;

  CategoriesApi(
    this._client,
  );

  Future<List<Category>> fetchCategories() async {
    try {
      final response = await _client.get("/categories");
      return (response.data as List)
          .map((category) => Category.fromJson(category))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
