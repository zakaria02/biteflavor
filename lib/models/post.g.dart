// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] == null
          ? null
          : ArticleTitle.fromJson(json['title'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      featured_media: (json['featured_media'] as num?)?.toInt(),
      content: json['content'] == null
          ? null
          : ArticleContent.fromJson(json['content'] as Map<String, dynamic>),
      author: (json['author'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
      'featured_media': instance.featured_media,
      'content': instance.content,
      'author': instance.author,
      'date': instance.date?.toIso8601String(),
      'link': instance.link,
    };

_$ArticleTitleImpl _$$ArticleTitleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleTitleImpl(
      rendered: json['rendered'] as String?,
    );

Map<String, dynamic> _$$ArticleTitleImplToJson(_$ArticleTitleImpl instance) =>
    <String, dynamic>{
      'rendered': instance.rendered,
    };

_$ArticleContentImpl _$$ArticleContentImplFromJson(Map<String, dynamic> json) =>
    _$ArticleContentImpl(
      rendered: json['rendered'] as String?,
    );

Map<String, dynamic> _$$ArticleContentImplToJson(
        _$ArticleContentImpl instance) =>
    <String, dynamic>{
      'rendered': instance.rendered,
    };

_$PostFeaturedMediaImpl _$$PostFeaturedMediaImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFeaturedMediaImpl(
      id: (json['id'] as num?)?.toInt(),
      source_url: json['source_url'] as String?,
    );

Map<String, dynamic> _$$PostFeaturedMediaImplToJson(
        _$PostFeaturedMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_url': instance.source_url,
    };
