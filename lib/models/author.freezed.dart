// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  AuthorPictures? get avatar_urls => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({int? id, String? name, AuthorPictures? avatar_urls});

  $AuthorPicturesCopyWith<$Res>? get avatar_urls;
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar_urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_urls: freezed == avatar_urls
          ? _value.avatar_urls
          : avatar_urls // ignore: cast_nullable_to_non_nullable
              as AuthorPictures?,
    ) as $Val);
  }

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorPicturesCopyWith<$Res>? get avatar_urls {
    if (_value.avatar_urls == null) {
      return null;
    }

    return $AuthorPicturesCopyWith<$Res>(_value.avatar_urls!, (value) {
      return _then(_value.copyWith(avatar_urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, AuthorPictures? avatar_urls});

  @override
  $AuthorPicturesCopyWith<$Res>? get avatar_urls;
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar_urls = freezed,
  }) {
    return _then(_$AuthorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_urls: freezed == avatar_urls
          ? _value.avatar_urls
          : avatar_urls // ignore: cast_nullable_to_non_nullable
              as AuthorPictures?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl extends _Author {
  const _$AuthorImpl({this.id, this.name, this.avatar_urls}) : super._();

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final AuthorPictures? avatar_urls;

  @override
  String toString() {
    return 'Author(id: $id, name: $name, avatar_urls: $avatar_urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar_urls, avatar_urls) ||
                other.avatar_urls == avatar_urls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar_urls);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author extends Author {
  const factory _Author(
      {final int? id,
      final String? name,
      final AuthorPictures? avatar_urls}) = _$AuthorImpl;
  const _Author._() : super._();

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  AuthorPictures? get avatar_urls;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorPictures _$AuthorPicturesFromJson(Map<String, dynamic> json) {
  return _AuthorPictures.fromJson(json);
}

/// @nodoc
mixin _$AuthorPictures {
  @JsonKey(name: '24')
  String? get size24 => throw _privateConstructorUsedError;
  @JsonKey(name: '48')
  String? get size48 => throw _privateConstructorUsedError;
  @JsonKey(name: '96')
  String? get size96 => throw _privateConstructorUsedError;

  /// Serializes this AuthorPictures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorPictures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorPicturesCopyWith<AuthorPictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorPicturesCopyWith<$Res> {
  factory $AuthorPicturesCopyWith(
          AuthorPictures value, $Res Function(AuthorPictures) then) =
      _$AuthorPicturesCopyWithImpl<$Res, AuthorPictures>;
  @useResult
  $Res call(
      {@JsonKey(name: '24') String? size24,
      @JsonKey(name: '48') String? size48,
      @JsonKey(name: '96') String? size96});
}

/// @nodoc
class _$AuthorPicturesCopyWithImpl<$Res, $Val extends AuthorPictures>
    implements $AuthorPicturesCopyWith<$Res> {
  _$AuthorPicturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorPictures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size24 = freezed,
    Object? size48 = freezed,
    Object? size96 = freezed,
  }) {
    return _then(_value.copyWith(
      size24: freezed == size24
          ? _value.size24
          : size24 // ignore: cast_nullable_to_non_nullable
              as String?,
      size48: freezed == size48
          ? _value.size48
          : size48 // ignore: cast_nullable_to_non_nullable
              as String?,
      size96: freezed == size96
          ? _value.size96
          : size96 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorPicturesImplCopyWith<$Res>
    implements $AuthorPicturesCopyWith<$Res> {
  factory _$$AuthorPicturesImplCopyWith(_$AuthorPicturesImpl value,
          $Res Function(_$AuthorPicturesImpl) then) =
      __$$AuthorPicturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '24') String? size24,
      @JsonKey(name: '48') String? size48,
      @JsonKey(name: '96') String? size96});
}

/// @nodoc
class __$$AuthorPicturesImplCopyWithImpl<$Res>
    extends _$AuthorPicturesCopyWithImpl<$Res, _$AuthorPicturesImpl>
    implements _$$AuthorPicturesImplCopyWith<$Res> {
  __$$AuthorPicturesImplCopyWithImpl(
      _$AuthorPicturesImpl _value, $Res Function(_$AuthorPicturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorPictures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size24 = freezed,
    Object? size48 = freezed,
    Object? size96 = freezed,
  }) {
    return _then(_$AuthorPicturesImpl(
      size24: freezed == size24
          ? _value.size24
          : size24 // ignore: cast_nullable_to_non_nullable
              as String?,
      size48: freezed == size48
          ? _value.size48
          : size48 // ignore: cast_nullable_to_non_nullable
              as String?,
      size96: freezed == size96
          ? _value.size96
          : size96 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorPicturesImpl extends _AuthorPictures {
  const _$AuthorPicturesImpl(
      {@JsonKey(name: '24') this.size24,
      @JsonKey(name: '48') this.size48,
      @JsonKey(name: '96') this.size96})
      : super._();

  factory _$AuthorPicturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorPicturesImplFromJson(json);

  @override
  @JsonKey(name: '24')
  final String? size24;
  @override
  @JsonKey(name: '48')
  final String? size48;
  @override
  @JsonKey(name: '96')
  final String? size96;

  @override
  String toString() {
    return 'AuthorPictures(size24: $size24, size48: $size48, size96: $size96)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorPicturesImpl &&
            (identical(other.size24, size24) || other.size24 == size24) &&
            (identical(other.size48, size48) || other.size48 == size48) &&
            (identical(other.size96, size96) || other.size96 == size96));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size24, size48, size96);

  /// Create a copy of AuthorPictures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorPicturesImplCopyWith<_$AuthorPicturesImpl> get copyWith =>
      __$$AuthorPicturesImplCopyWithImpl<_$AuthorPicturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorPicturesImplToJson(
      this,
    );
  }
}

abstract class _AuthorPictures extends AuthorPictures {
  const factory _AuthorPictures(
      {@JsonKey(name: '24') final String? size24,
      @JsonKey(name: '48') final String? size48,
      @JsonKey(name: '96') final String? size96}) = _$AuthorPicturesImpl;
  const _AuthorPictures._() : super._();

  factory _AuthorPictures.fromJson(Map<String, dynamic> json) =
      _$AuthorPicturesImpl.fromJson;

  @override
  @JsonKey(name: '24')
  String? get size24;
  @override
  @JsonKey(name: '48')
  String? get size48;
  @override
  @JsonKey(name: '96')
  String? get size96;

  /// Create a copy of AuthorPictures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorPicturesImplCopyWith<_$AuthorPicturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
