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
      uagb_featured_image_src: json['uagb_featured_image_src'] == null
          ? null
          : PostPictures.fromJson(
              json['uagb_featured_image_src'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : ArticleContent.fromJson(json['content'] as Map<String, dynamic>),
      author: (json['author'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
      'uagb_featured_image_src': instance.uagb_featured_image_src,
      'content': instance.content,
      'author': instance.author,
      'date': instance.date?.toIso8601String(),
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

_$PostPicturesImpl _$$PostPicturesImplFromJson(Map<String, dynamic> json) =>
    _$PostPicturesImpl(
      full: json['full'] as List<dynamic>?,
      thumbnail: json['thumbnail'] as List<dynamic>?,
      medium: json['medium'] as List<dynamic>?,
      medium_large: json['medium_large'] as List<dynamic>?,
      large: json['large'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PostPicturesImplToJson(_$PostPicturesImpl instance) =>
    <String, dynamic>{
      'full': instance.full,
      'thumbnail': instance.thumbnail,
      'medium': instance.medium,
      'medium_large': instance.medium_large,
      'large': instance.large,
    };
