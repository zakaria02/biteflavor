import 'package:biteflavor/models/category.dart';
import 'package:biteflavor/uios/author_uio.dart';

class PostUio {
  final int? id;
  final String? title;
  final String? htmlContent;
  final List<Category>? categories;
  final String? picture;
  final DateTime? date;
  final AuthorUio? author;

  const PostUio({
    this.id,
    this.title,
    this.htmlContent,
    this.categories,
    this.picture,
    this.date,
    this.author,
  });

  static List<PostUio> mock = [
    PostUio(
      id: 1,
      title: "title 1",
      htmlContent: "content1",
      categories: Category.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 2,
      title: "title 2",
      htmlContent: "content2",
      categories: Category.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 3,
      title: "title 3",
      htmlContent: "content3",
      categories: Category.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 4,
      title: "title 4",
      htmlContent: "content4",
      categories: Category.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 5,
      title: "title 5",
      htmlContent: "content5",
      categories: Category.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
  ];
}
