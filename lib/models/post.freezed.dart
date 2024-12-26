// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int? get id => throw _privateConstructorUsedError;
  ArticleTitle? get title => throw _privateConstructorUsedError;
  List<int>? get categories => throw _privateConstructorUsedError;
  int? get featured_media => throw _privateConstructorUsedError;
  ArticleContent? get content => throw _privateConstructorUsedError;
  int? get author => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int? id,
      ArticleTitle? title,
      List<int>? categories,
      int? featured_media,
      ArticleContent? content,
      int? author,
      DateTime? date,
      String? link});

  $ArticleTitleCopyWith<$Res>? get title;
  $ArticleContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? categories = freezed,
    Object? featured_media = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? date = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ArticleTitle?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      featured_media: freezed == featured_media
          ? _value.featured_media
          : featured_media // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ArticleContent?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleTitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $ArticleTitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ArticleContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      ArticleTitle? title,
      List<int>? categories,
      int? featured_media,
      ArticleContent? content,
      int? author,
      DateTime? date,
      String? link});

  @override
  $ArticleTitleCopyWith<$Res>? get title;
  @override
  $ArticleContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? categories = freezed,
    Object? featured_media = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? date = freezed,
    Object? link = freezed,
  }) {
    return _then(_$PostImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ArticleTitle?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      featured_media: freezed == featured_media
          ? _value.featured_media
          : featured_media // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ArticleContent?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  const _$PostImpl(
      {this.id,
      this.title,
      final List<int>? categories,
      this.featured_media,
      this.content,
      this.author,
      this.date,
      this.link})
      : _categories = categories,
        super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int? id;
  @override
  final ArticleTitle? title;
  final List<int>? _categories;
  @override
  List<int>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? featured_media;
  @override
  final ArticleContent? content;
  @override
  final int? author;
  @override
  final DateTime? date;
  @override
  final String? link;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, categories: $categories, featured_media: $featured_media, content: $content, author: $author, date: $date, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.featured_media, featured_media) ||
                other.featured_media == featured_media) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_categories),
      featured_media,
      content,
      author,
      date,
      link);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {final int? id,
      final ArticleTitle? title,
      final List<int>? categories,
      final int? featured_media,
      final ArticleContent? content,
      final int? author,
      final DateTime? date,
      final String? link}) = _$PostImpl;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int? get id;
  @override
  ArticleTitle? get title;
  @override
  List<int>? get categories;
  @override
  int? get featured_media;
  @override
  ArticleContent? get content;
  @override
  int? get author;
  @override
  DateTime? get date;
  @override
  String? get link;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleTitle _$ArticleTitleFromJson(Map<String, dynamic> json) {
  return _ArticleTitle.fromJson(json);
}

/// @nodoc
mixin _$ArticleTitle {
  String? get rendered => throw _privateConstructorUsedError;

  /// Serializes this ArticleTitle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleTitleCopyWith<ArticleTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleTitleCopyWith<$Res> {
  factory $ArticleTitleCopyWith(
          ArticleTitle value, $Res Function(ArticleTitle) then) =
      _$ArticleTitleCopyWithImpl<$Res, ArticleTitle>;
  @useResult
  $Res call({String? rendered});
}

/// @nodoc
class _$ArticleTitleCopyWithImpl<$Res, $Val extends ArticleTitle>
    implements $ArticleTitleCopyWith<$Res> {
  _$ArticleTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_value.copyWith(
      rendered: freezed == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleTitleImplCopyWith<$Res>
    implements $ArticleTitleCopyWith<$Res> {
  factory _$$ArticleTitleImplCopyWith(
          _$ArticleTitleImpl value, $Res Function(_$ArticleTitleImpl) then) =
      __$$ArticleTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rendered});
}

/// @nodoc
class __$$ArticleTitleImplCopyWithImpl<$Res>
    extends _$ArticleTitleCopyWithImpl<$Res, _$ArticleTitleImpl>
    implements _$$ArticleTitleImplCopyWith<$Res> {
  __$$ArticleTitleImplCopyWithImpl(
      _$ArticleTitleImpl _value, $Res Function(_$ArticleTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_$ArticleTitleImpl(
      rendered: freezed == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleTitleImpl extends _ArticleTitle {
  const _$ArticleTitleImpl({this.rendered}) : super._();

  factory _$ArticleTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleTitleImplFromJson(json);

  @override
  final String? rendered;

  @override
  String toString() {
    return 'ArticleTitle(rendered: $rendered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleTitleImpl &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rendered);

  /// Create a copy of ArticleTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleTitleImplCopyWith<_$ArticleTitleImpl> get copyWith =>
      __$$ArticleTitleImplCopyWithImpl<_$ArticleTitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleTitleImplToJson(
      this,
    );
  }
}

abstract class _ArticleTitle extends ArticleTitle {
  const factory _ArticleTitle({final String? rendered}) = _$ArticleTitleImpl;
  const _ArticleTitle._() : super._();

  factory _ArticleTitle.fromJson(Map<String, dynamic> json) =
      _$ArticleTitleImpl.fromJson;

  @override
  String? get rendered;

  /// Create a copy of ArticleTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleTitleImplCopyWith<_$ArticleTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleContent _$ArticleContentFromJson(Map<String, dynamic> json) {
  return _ArticleContent.fromJson(json);
}

/// @nodoc
mixin _$ArticleContent {
  String? get rendered => throw _privateConstructorUsedError;

  /// Serializes this ArticleContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleContentCopyWith<ArticleContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleContentCopyWith<$Res> {
  factory $ArticleContentCopyWith(
          ArticleContent value, $Res Function(ArticleContent) then) =
      _$ArticleContentCopyWithImpl<$Res, ArticleContent>;
  @useResult
  $Res call({String? rendered});
}

/// @nodoc
class _$ArticleContentCopyWithImpl<$Res, $Val extends ArticleContent>
    implements $ArticleContentCopyWith<$Res> {
  _$ArticleContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_value.copyWith(
      rendered: freezed == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleContentImplCopyWith<$Res>
    implements $ArticleContentCopyWith<$Res> {
  factory _$$ArticleContentImplCopyWith(_$ArticleContentImpl value,
          $Res Function(_$ArticleContentImpl) then) =
      __$$ArticleContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rendered});
}

/// @nodoc
class __$$ArticleContentImplCopyWithImpl<$Res>
    extends _$ArticleContentCopyWithImpl<$Res, _$ArticleContentImpl>
    implements _$$ArticleContentImplCopyWith<$Res> {
  __$$ArticleContentImplCopyWithImpl(
      _$ArticleContentImpl _value, $Res Function(_$ArticleContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_$ArticleContentImpl(
      rendered: freezed == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleContentImpl extends _ArticleContent {
  const _$ArticleContentImpl({this.rendered}) : super._();

  factory _$ArticleContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleContentImplFromJson(json);

  @override
  final String? rendered;

  @override
  String toString() {
    return 'ArticleContent(rendered: $rendered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleContentImpl &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rendered);

  /// Create a copy of ArticleContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleContentImplCopyWith<_$ArticleContentImpl> get copyWith =>
      __$$ArticleContentImplCopyWithImpl<_$ArticleContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleContentImplToJson(
      this,
    );
  }
}

abstract class _ArticleContent extends ArticleContent {
  const factory _ArticleContent({final String? rendered}) =
      _$ArticleContentImpl;
  const _ArticleContent._() : super._();

  factory _ArticleContent.fromJson(Map<String, dynamic> json) =
      _$ArticleContentImpl.fromJson;

  @override
  String? get rendered;

  /// Create a copy of ArticleContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleContentImplCopyWith<_$ArticleContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFeaturedMedia _$PostFeaturedMediaFromJson(Map<String, dynamic> json) {
  return _PostFeaturedMedia.fromJson(json);
}

/// @nodoc
mixin _$PostFeaturedMedia {
  int? get id => throw _privateConstructorUsedError;
  String? get source_url => throw _privateConstructorUsedError;

  /// Serializes this PostFeaturedMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostFeaturedMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFeaturedMediaCopyWith<PostFeaturedMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFeaturedMediaCopyWith<$Res> {
  factory $PostFeaturedMediaCopyWith(
          PostFeaturedMedia value, $Res Function(PostFeaturedMedia) then) =
      _$PostFeaturedMediaCopyWithImpl<$Res, PostFeaturedMedia>;
  @useResult
  $Res call({int? id, String? source_url});
}

/// @nodoc
class _$PostFeaturedMediaCopyWithImpl<$Res, $Val extends PostFeaturedMedia>
    implements $PostFeaturedMediaCopyWith<$Res> {
  _$PostFeaturedMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostFeaturedMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      source_url: freezed == source_url
          ? _value.source_url
          : source_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFeaturedMediaImplCopyWith<$Res>
    implements $PostFeaturedMediaCopyWith<$Res> {
  factory _$$PostFeaturedMediaImplCopyWith(_$PostFeaturedMediaImpl value,
          $Res Function(_$PostFeaturedMediaImpl) then) =
      __$$PostFeaturedMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? source_url});
}

/// @nodoc
class __$$PostFeaturedMediaImplCopyWithImpl<$Res>
    extends _$PostFeaturedMediaCopyWithImpl<$Res, _$PostFeaturedMediaImpl>
    implements _$$PostFeaturedMediaImplCopyWith<$Res> {
  __$$PostFeaturedMediaImplCopyWithImpl(_$PostFeaturedMediaImpl _value,
      $Res Function(_$PostFeaturedMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostFeaturedMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source_url = freezed,
  }) {
    return _then(_$PostFeaturedMediaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      source_url: freezed == source_url
          ? _value.source_url
          : source_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFeaturedMediaImpl extends _PostFeaturedMedia {
  const _$PostFeaturedMediaImpl({this.id, this.source_url}) : super._();

  factory _$PostFeaturedMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeaturedMediaImplFromJson(json);

  @override
  final int? id;
  @override
  final String? source_url;

  @override
  String toString() {
    return 'PostFeaturedMedia(id: $id, source_url: $source_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeaturedMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source_url, source_url) ||
                other.source_url == source_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, source_url);

  /// Create a copy of PostFeaturedMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeaturedMediaImplCopyWith<_$PostFeaturedMediaImpl> get copyWith =>
      __$$PostFeaturedMediaImplCopyWithImpl<_$PostFeaturedMediaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFeaturedMediaImplToJson(
      this,
    );
  }
}

abstract class _PostFeaturedMedia extends PostFeaturedMedia {
  const factory _PostFeaturedMedia({final int? id, final String? source_url}) =
      _$PostFeaturedMediaImpl;
  const _PostFeaturedMedia._() : super._();

  factory _PostFeaturedMedia.fromJson(Map<String, dynamic> json) =
      _$PostFeaturedMediaImpl.fromJson;

  @override
  int? get id;
  @override
  String? get source_url;

  /// Create a copy of PostFeaturedMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFeaturedMediaImplCopyWith<_$PostFeaturedMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
