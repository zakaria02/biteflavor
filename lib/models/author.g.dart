// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      avatar_urls: json['avatar_urls'] == null
          ? null
          : AuthorPictures.fromJson(
              json['avatar_urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_urls': instance.avatar_urls,
    };

_$AuthorPicturesImpl _$$AuthorPicturesImplFromJson(Map<String, dynamic> json) =>
    _$AuthorPicturesImpl(
      size24: json['24'] as String?,
      size48: json['48'] as String?,
      size96: json['96'] as String?,
    );

Map<String, dynamic> _$$AuthorPicturesImplToJson(
        _$AuthorPicturesImpl instance) =>
    <String, dynamic>{
      '24': instance.size24,
      '48': instance.size48,
      '96': instance.size96,
    };
