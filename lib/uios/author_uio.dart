import 'package:hive/hive.dart';

part 'author_uio.g.dart';

@HiveType(typeId: 3)
class AuthorUio {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? picture;

  const AuthorUio({
    this.id,
    this.name,
    this.picture,
  });

  static const AuthorUio mock = AuthorUio(
      id: 1,
      name: "author 1",
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg");
}
