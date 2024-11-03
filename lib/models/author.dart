import 'package:biteflavor/uios/author_uio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@freezed
class Author with _$Author {
  const Author._();
  const factory Author({
    int? id,
    String? name,
    AuthorPictures? avatar_urls,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  AuthorUio toAuthorUio() {
    return AuthorUio(id: id, name: name, picture: avatar_urls?.size96);
  }
}

@freezed
class AuthorPictures with _$AuthorPictures {
  const AuthorPictures._();
  const factory AuthorPictures({
    @JsonKey(name: '24') String? size24,
    @JsonKey(name: '48') String? size48,
    @JsonKey(name: '96') String? size96,
  }) = _AuthorPictures;

  factory AuthorPictures.fromJson(Map<String, dynamic> json) =>
      _$AuthorPicturesFromJson(json);
}
