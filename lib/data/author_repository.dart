import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthorRepository extends _$AuthorRepository {
  @override
  AuthorApi build() {
    return AuthorApi(ref.watch(clientProvider));
  }
}

class AuthorApi {
  final Dio _client;

  AuthorApi(
    this._client,
  );

  Future<Author> fetchAuthor({required int id}) async {
    try {
      final response = await _client.get("/users/$id");
      return Author.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
