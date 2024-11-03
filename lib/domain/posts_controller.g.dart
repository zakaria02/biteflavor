// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postsHash() => r'5c4412d5465767332601a56fbed482a5fb94762f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [posts].
@ProviderFor(posts)
const postsProvider = PostsFamily();

/// See also [posts].
class PostsFamily extends Family<AsyncValue<List<PostUio>>> {
  /// See also [posts].
  const PostsFamily();

  /// See also [posts].
  PostsProvider call({
    int? categoryId,
    int count = 5,
  }) {
    return PostsProvider(
      categoryId: categoryId,
      count: count,
    );
  }

  @override
  PostsProvider getProviderOverride(
    covariant PostsProvider provider,
  ) {
    return call(
      categoryId: provider.categoryId,
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postsProvider';
}

/// See also [posts].
class PostsProvider extends FutureProvider<List<PostUio>> {
  /// See also [posts].
  PostsProvider({
    int? categoryId,
    int count = 5,
  }) : this._internal(
          (ref) => posts(
            ref as PostsRef,
            categoryId: categoryId,
            count: count,
          ),
          from: postsProvider,
          name: r'postsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postsHash,
          dependencies: PostsFamily._dependencies,
          allTransitiveDependencies: PostsFamily._allTransitiveDependencies,
          categoryId: categoryId,
          count: count,
        );

  PostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
    required this.count,
  }) : super.internal();

  final int? categoryId;
  final int count;

  @override
  Override overrideWith(
    FutureOr<List<PostUio>> Function(PostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostsProvider._internal(
        (ref) => create(ref as PostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
        count: count,
      ),
    );
  }

  @override
  FutureProviderElement<List<PostUio>> createElement() {
    return _PostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostsProvider &&
        other.categoryId == categoryId &&
        other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostsRef on FutureProviderRef<List<PostUio>> {
  /// The parameter `categoryId` of this provider.
  int? get categoryId;

  /// The parameter `count` of this provider.
  int get count;
}

class _PostsProviderElement extends FutureProviderElement<List<PostUio>>
    with PostsRef {
  _PostsProviderElement(super.provider);

  @override
  int? get categoryId => (origin as PostsProvider).categoryId;
  @override
  int get count => (origin as PostsProvider).count;
}

String _$latestHash() => r'c0335fe4afe3296b9ba62602ac2f8b4592452236';

/// See also [latest].
@ProviderFor(latest)
final latestProvider = FutureProvider<List<PostUio>>.internal(
  latest,
  name: r'latestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$latestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LatestRef = FutureProviderRef<List<PostUio>>;
String _$postDetailsHash() => r'f17608e92106eaf3bbdf82bcbe0b509b8494eaf4';

/// See also [postDetails].
@ProviderFor(postDetails)
const postDetailsProvider = PostDetailsFamily();

/// See also [postDetails].
class PostDetailsFamily extends Family<AsyncValue<PostUio?>> {
  /// See also [postDetails].
  const PostDetailsFamily();

  /// See also [postDetails].
  PostDetailsProvider call({
    required int postId,
  }) {
    return PostDetailsProvider(
      postId: postId,
    );
  }

  @override
  PostDetailsProvider getProviderOverride(
    covariant PostDetailsProvider provider,
  ) {
    return call(
      postId: provider.postId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postDetailsProvider';
}

/// See also [postDetails].
class PostDetailsProvider extends AutoDisposeFutureProvider<PostUio?> {
  /// See also [postDetails].
  PostDetailsProvider({
    required int postId,
  }) : this._internal(
          (ref) => postDetails(
            ref as PostDetailsRef,
            postId: postId,
          ),
          from: postDetailsProvider,
          name: r'postDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailsHash,
          dependencies: PostDetailsFamily._dependencies,
          allTransitiveDependencies:
              PostDetailsFamily._allTransitiveDependencies,
          postId: postId,
        );

  PostDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  Override overrideWith(
    FutureOr<PostUio?> Function(PostDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostDetailsProvider._internal(
        (ref) => create(ref as PostDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostUio?> createElement() {
    return _PostDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailsProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostDetailsRef on AutoDisposeFutureProviderRef<PostUio?> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _PostDetailsProviderElement
    extends AutoDisposeFutureProviderElement<PostUio?> with PostDetailsRef {
  _PostDetailsProviderElement(super.provider);

  @override
  int get postId => (origin as PostDetailsProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
