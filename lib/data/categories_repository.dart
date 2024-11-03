import 'package:biteflavor/models/category.dart';
import 'package:biteflavor/utils/providers/app_localizations_provider.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'categories_repository.g.dart';

@Riverpod(keepAlive: true)
class CategoriesRepository extends _$CategoriesRepository {
  @override
  CategoriesApi build() {
    return CategoriesApi(
      ref.watch(clientProvider),
      ref.watch(appLocalizationsProvider),
    );
  }
}

class CategoriesApi {
  final Dio _client;
  final AppLocalizations _localizations;

  CategoriesApi(
    this._client,
    this._localizations,
  );

  Future<List<Category>> fetchCategories() async {
    try {
      final response = await _client.get("/categories");
      return (response.data as List)
          .map((category) => Category.fromJson(category))
          .toList();
    } catch (e) {
      throw _localizations.defaultError;
    }
  }
}
