import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    int? id,
    ArticleTitle? title,
    List<int>? categories,
    int? featured_media,
    ArticleContent? content,
    int? author,
    DateTime? date,
    String? link,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class ArticleTitle with _$ArticleTitle {
  const ArticleTitle._();
  const factory ArticleTitle({
    String? rendered,
  }) = _ArticleTitle;

  factory ArticleTitle.fromJson(Map<String, dynamic> json) =>
      _$ArticleTitleFromJson(json);

  static const ArticleTitle mock = ArticleTitle(rendered: "Mock Title");
}

@freezed
class ArticleContent with _$ArticleContent {
  const ArticleContent._();
  const factory ArticleContent({
    String? rendered,
  }) = _ArticleContent;

  factory ArticleContent.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentFromJson(json);
}

@freezed
class PostFeaturedMedia with _$PostFeaturedMedia {
  const PostFeaturedMedia._();
  const factory PostFeaturedMedia({
    int? id,
    String? source_url,
  }) = _PostFeaturedMedia;

  factory PostFeaturedMedia.fromJson(Map<String, dynamic> json) =>
      _$PostFeaturedMediaFromJson(json);
}
