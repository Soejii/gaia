// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_announcement_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailAnnouncementControllerHash() =>
    r'33823865dc2439b5c249a31a1422cd942ad2d98d';

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

abstract class _$DetailAnnouncementController
    extends BuildlessAutoDisposeAsyncNotifier<AnnouncementEntity> {
  late final int id;

  FutureOr<AnnouncementEntity> build(
    int id,
  );
}

/// See also [DetailAnnouncementController].
@ProviderFor(DetailAnnouncementController)
const detailAnnouncementControllerProvider =
    DetailAnnouncementControllerFamily();

/// See also [DetailAnnouncementController].
class DetailAnnouncementControllerFamily
    extends Family<AsyncValue<AnnouncementEntity>> {
  /// See also [DetailAnnouncementController].
  const DetailAnnouncementControllerFamily();

  /// See also [DetailAnnouncementController].
  DetailAnnouncementControllerProvider call(
    int id,
  ) {
    return DetailAnnouncementControllerProvider(
      id,
    );
  }

  @override
  DetailAnnouncementControllerProvider getProviderOverride(
    covariant DetailAnnouncementControllerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'detailAnnouncementControllerProvider';
}

/// See also [DetailAnnouncementController].
class DetailAnnouncementControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailAnnouncementController,
        AnnouncementEntity> {
  /// See also [DetailAnnouncementController].
  DetailAnnouncementControllerProvider(
    int id,
  ) : this._internal(
          () => DetailAnnouncementController()..id = id,
          from: detailAnnouncementControllerProvider,
          name: r'detailAnnouncementControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailAnnouncementControllerHash,
          dependencies: DetailAnnouncementControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailAnnouncementControllerFamily._allTransitiveDependencies,
          id: id,
        );

  DetailAnnouncementControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<AnnouncementEntity> runNotifierBuild(
    covariant DetailAnnouncementController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(DetailAnnouncementController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailAnnouncementControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailAnnouncementController,
      AnnouncementEntity> createElement() {
    return _DetailAnnouncementControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailAnnouncementControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailAnnouncementControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AnnouncementEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DetailAnnouncementControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        DetailAnnouncementController,
        AnnouncementEntity> with DetailAnnouncementControllerRef {
  _DetailAnnouncementControllerProviderElement(super.provider);

  @override
  int get id => (origin as DetailAnnouncementControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
