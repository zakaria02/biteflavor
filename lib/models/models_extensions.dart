import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:collection/collection.dart';

extension PostMapper on Post {
  PostUio toPostUio(List<CategoryUio> categories,
          List<PostFeaturedMedia> medias, List<Author> authors) =>
      PostUio(
        id: id,
        title: title?.rendered,
        htmlContent: content?.rendered,
        categories: categories
            .where((category) =>
                (this.categories ?? []).contains(category.id ?? 0))
            .toList(),
        picture:
            medias.firstWhere((media) => media.id == featured_media).source_url,
        date: date,
        author: authors
            .firstWhereOrNull((author) => author.id == this.author)
            ?.toAuthorUio(),
      );
}
