import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/utils/providers/app_localizations_provider.dart';
import 'package:biteflavor/utils/providers/client_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'author_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthorRepository extends _$AuthorRepository {
  @override
  AuthorApi build() {
    return AuthorApi(
      ref.watch(clientProvider),
      ref.watch(appLocalizationsProvider),
    );
  }
}

class AuthorApi {
  final Dio _client;
  final AppLocalizations _localizations;

  AuthorApi(
    this._client,
    this._localizations,
  );

  Future<Author> fetchAuthor({required int id}) async {
    try {
      final response = await _client.get("/users/$id");
      return Author.fromJson(response.data);
    } catch (e) {
      throw _localizations.defaultError;
    }
  }
}
