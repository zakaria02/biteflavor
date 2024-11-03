class AuthorUio {
  final int? id;
  final String? name;
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
