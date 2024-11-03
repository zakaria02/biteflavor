import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_repository.g.dart';

@Riverpod(keepAlive: true)
class PostsRepository extends _$PostsRepository {
  @override
  PostsApi build() {
    return PostsApi(ref.watch(clientProvider));
  }
}

class PostsApi {
  final Dio _client;

  PostsApi(
    this._client,
  );

  Future<List<Post>> fetchCategoryArticlesByCount(
      {required int? categoryId, required int count}) async {
    try {
      final response = await _client.get(
        "/posts",
        queryParameters: {
          if (categoryId != null) "categories": categoryId,
          "per_page": count,
          "orderby": "date",
          "order": "desc",
        },
      );
      return (response.data as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } catch (e) {
      rethrow;
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
      rethrow;
    }
  }
}
