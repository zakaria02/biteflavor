import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/utils/providers/app_localizations_provider.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'posts_repository.g.dart';

@Riverpod(keepAlive: true)
class PostsRepository extends _$PostsRepository {
  @override
  PostsApi build() {
    return PostsApi(
      ref.watch(clientProvider),
      ref.watch(appLocalizationsProvider),
    );
  }
}

class PostsApi {
  final Dio _client;
  final AppLocalizations _localizations;

  PostsApi(
    this._client,
    this._localizations,
  );

  Future<List<Post>> fetchCategoryArticlesByCount(
      {required int? categoryId, required int count}) async {
    try {
      final response = await _client.get(
        "/posts",
        queryParameters: {
          if (categoryId != null) "categories": categoryId,
          "per_page": count,
        },
      );
      return (response.data as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } catch (e) {
      throw _localizations.defaultError;
    }
  }

  Future<List<Post>> fetchLatestArticles() async {
    try {
      final response = await _client.get(
        "/posts",
        queryParameters: {
          "per_page": 10,
          "orderby": "date",
          "order": "desc",
        },
      );
      return (response.data as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } catch (e) {
      throw _localizations.defaultError;
    }
  }

  Future<Post> fetchPostDetails({required int postId}) async {
    try {
      final response = await _client.get(
        "/posts/$postId",
      );
      return Post.fromJson(response.data);
    } catch (e) {
      throw _localizations.defaultError;
    }
  }
}
