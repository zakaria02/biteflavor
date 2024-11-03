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
  PostPictures? get uagb_featured_image_src =>
      throw _privateConstructorUsedError;
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
      PostPictures? uagb_featured_image_src,
      ArticleContent? content,
      int? author,
      DateTime? date,
      String? link});

  $ArticleTitleCopyWith<$Res>? get title;
  $PostPicturesCopyWith<$Res>? get uagb_featured_image_src;
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
    Object? uagb_featured_image_src = freezed,
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
      uagb_featured_image_src: freezed == uagb_featured_image_src
          ? _value.uagb_featured_image_src
          : uagb_featured_image_src // ignore: cast_nullable_to_non_nullable
              as PostPictures?,
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
  $PostPicturesCopyWith<$Res>? get uagb_featured_image_src {
    if (_value.uagb_featured_image_src == null) {
      return null;
    }

    return $PostPicturesCopyWith<$Res>(_value.uagb_featured_image_src!,
        (value) {
      return _then(_value.copyWith(uagb_featured_image_src: value) as $Val);
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
      PostPictures? uagb_featured_image_src,
      ArticleContent? content,
      int? author,
      DateTime? date,
      String? link});

  @override
  $ArticleTitleCopyWith<$Res>? get title;
  @override
  $PostPicturesCopyWith<$Res>? get uagb_featured_image_src;
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
    Object? uagb_featured_image_src = freezed,
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
      uagb_featured_image_src: freezed == uagb_featured_image_src
          ? _value.uagb_featured_image_src
          : uagb_featured_image_src // ignore: cast_nullable_to_non_nullable
              as PostPictures?,
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
      this.uagb_featured_image_src,
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
  final PostPictures? uagb_featured_image_src;
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
    return 'Post(id: $id, title: $title, categories: $categories, uagb_featured_image_src: $uagb_featured_image_src, content: $content, author: $author, date: $date, link: $link)';
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
            (identical(
                    other.uagb_featured_image_src, uagb_featured_image_src) ||
                other.uagb_featured_image_src == uagb_featured_image_src) &&
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
      uagb_featured_image_src,
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
      final PostPictures? uagb_featured_image_src,
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
  PostPictures? get uagb_featured_image_src;
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

PostPictures _$PostPicturesFromJson(Map<String, dynamic> json) {
  return _PostPictures.fromJson(json);
}

/// @nodoc
mixin _$PostPictures {
  List<dynamic>? get full => throw _privateConstructorUsedError;
  List<dynamic>? get thumbnail => throw _privateConstructorUsedError;
  List<dynamic>? get medium => throw _privateConstructorUsedError;
  List<dynamic>? get medium_large => throw _privateConstructorUsedError;
  List<dynamic>? get large => throw _privateConstructorUsedError;

  /// Serializes this PostPictures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPictures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPicturesCopyWith<PostPictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPicturesCopyWith<$Res> {
  factory $PostPicturesCopyWith(
          PostPictures value, $Res Function(PostPictures) then) =
      _$PostPicturesCopyWithImpl<$Res, PostPictures>;
  @useResult
  $Res call(
      {List<dynamic>? full,
      List<dynamic>? thumbnail,
      List<dynamic>? medium,
      List<dynamic>? medium_large,
      List<dynamic>? large});
}

/// @nodoc
class _$PostPicturesCopyWithImpl<$Res, $Val extends PostPictures>
    implements $PostPicturesCopyWith<$Res> {
  _$PostPicturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPictures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = freezed,
    Object? thumbnail = freezed,
    Object? medium = freezed,
    Object? medium_large = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      medium_large: freezed == medium_large
          ? _value.medium_large
          : medium_large // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPicturesImplCopyWith<$Res>
    implements $PostPicturesCopyWith<$Res> {
  factory _$$PostPicturesImplCopyWith(
          _$PostPicturesImpl value, $Res Function(_$PostPicturesImpl) then) =
      __$$PostPicturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? full,
      List<dynamic>? thumbnail,
      List<dynamic>? medium,
      List<dynamic>? medium_large,
      List<dynamic>? large});
}

/// @nodoc
class __$$PostPicturesImplCopyWithImpl<$Res>
    extends _$PostPicturesCopyWithImpl<$Res, _$PostPicturesImpl>
    implements _$$PostPicturesImplCopyWith<$Res> {
  __$$PostPicturesImplCopyWithImpl(
      _$PostPicturesImpl _value, $Res Function(_$PostPicturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPictures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = freezed,
    Object? thumbnail = freezed,
    Object? medium = freezed,
    Object? medium_large = freezed,
    Object? large = freezed,
  }) {
    return _then(_$PostPicturesImpl(
      full: freezed == full
          ? _value._full
          : full // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      thumbnail: freezed == thumbnail
          ? _value._thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      medium: freezed == medium
          ? _value._medium
          : medium // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      medium_large: freezed == medium_large
          ? _value._medium_large
          : medium_large // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      large: freezed == large
          ? _value._large
          : large // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPicturesImpl extends _PostPictures {
  const _$PostPicturesImpl(
      {final List<dynamic>? full,
      final List<dynamic>? thumbnail,
      final List<dynamic>? medium,
      final List<dynamic>? medium_large,
      final List<dynamic>? large})
      : _full = full,
        _thumbnail = thumbnail,
        _medium = medium,
        _medium_large = medium_large,
        _large = large,
        super._();

  factory _$PostPicturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPicturesImplFromJson(json);

  final List<dynamic>? _full;
  @override
  List<dynamic>? get full {
    final value = _full;
    if (value == null) return null;
    if (_full is EqualUnmodifiableListView) return _full;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _thumbnail;
  @override
  List<dynamic>? get thumbnail {
    final value = _thumbnail;
    if (value == null) return null;
    if (_thumbnail is EqualUnmodifiableListView) return _thumbnail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _medium;
  @override
  List<dynamic>? get medium {
    final value = _medium;
    if (value == null) return null;
    if (_medium is EqualUnmodifiableListView) return _medium;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _medium_large;
  @override
  List<dynamic>? get medium_large {
    final value = _medium_large;
    if (value == null) return null;
    if (_medium_large is EqualUnmodifiableListView) return _medium_large;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _large;
  @override
  List<dynamic>? get large {
    final value = _large;
    if (value == null) return null;
    if (_large is EqualUnmodifiableListView) return _large;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostPictures(full: $full, thumbnail: $thumbnail, medium: $medium, medium_large: $medium_large, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPicturesImpl &&
            const DeepCollectionEquality().equals(other._full, _full) &&
            const DeepCollectionEquality()
                .equals(other._thumbnail, _thumbnail) &&
            const DeepCollectionEquality().equals(other._medium, _medium) &&
            const DeepCollectionEquality()
                .equals(other._medium_large, _medium_large) &&
            const DeepCollectionEquality().equals(other._large, _large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_full),
      const DeepCollectionEquality().hash(_thumbnail),
      const DeepCollectionEquality().hash(_medium),
      const DeepCollectionEquality().hash(_medium_large),
      const DeepCollectionEquality().hash(_large));

  /// Create a copy of PostPictures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPicturesImplCopyWith<_$PostPicturesImpl> get copyWith =>
      __$$PostPicturesImplCopyWithImpl<_$PostPicturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPicturesImplToJson(
      this,
    );
  }
}

abstract class _PostPictures extends PostPictures {
  const factory _PostPictures(
      {final List<dynamic>? full,
      final List<dynamic>? thumbnail,
      final List<dynamic>? medium,
      final List<dynamic>? medium_large,
      final List<dynamic>? large}) = _$PostPicturesImpl;
  const _PostPictures._() : super._();

  factory _PostPictures.fromJson(Map<String, dynamic> json) =
      _$PostPicturesImpl.fromJson;

  @override
  List<dynamic>? get full;
  @override
  List<dynamic>? get thumbnail;
  @override
  List<dynamic>? get medium;
  @override
  List<dynamic>? get medium_large;
  @override
  List<dynamic>? get large;

  /// Create a copy of PostPictures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPicturesImplCopyWith<_$PostPicturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
