// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_edutainment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailEdutainmentControllerHash() =>
    r'd708d592ed5a315ef0ab03496b22d623b5ea6835';

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

abstract class _$DetailEdutainmentController
    extends BuildlessAutoDisposeAsyncNotifier<EdutainmentEntity> {
  late final int id;

  FutureOr<EdutainmentEntity> build(
    int id,
  );
}

/// See also [DetailEdutainmentController].
@ProviderFor(DetailEdutainmentController)
const detailEdutainmentControllerProvider = DetailEdutainmentControllerFamily();

/// See also [DetailEdutainmentController].
class DetailEdutainmentControllerFamily
    extends Family<AsyncValue<EdutainmentEntity>> {
  /// See also [DetailEdutainmentController].
  const DetailEdutainmentControllerFamily();

  /// See also [DetailEdutainmentController].
  DetailEdutainmentControllerProvider call(
    int id,
  ) {
    return DetailEdutainmentControllerProvider(
      id,
    );
  }

  @override
  DetailEdutainmentControllerProvider getProviderOverride(
    covariant DetailEdutainmentControllerProvider provider,
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
  String? get name => r'detailEdutainmentControllerProvider';
}

/// See also [DetailEdutainmentController].
class DetailEdutainmentControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailEdutainmentController,
        EdutainmentEntity> {
  /// See also [DetailEdutainmentController].
  DetailEdutainmentControllerProvider(
    int id,
  ) : this._internal(
          () => DetailEdutainmentController()..id = id,
          from: detailEdutainmentControllerProvider,
          name: r'detailEdutainmentControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailEdutainmentControllerHash,
          dependencies: DetailEdutainmentControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailEdutainmentControllerFamily._allTransitiveDependencies,
          id: id,
        );

  DetailEdutainmentControllerProvider._internal(
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
  FutureOr<EdutainmentEntity> runNotifierBuild(
    covariant DetailEdutainmentController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(DetailEdutainmentController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailEdutainmentControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DetailEdutainmentController,
      EdutainmentEntity> createElement() {
    return _DetailEdutainmentControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailEdutainmentControllerProvider && other.id == id;
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
mixin DetailEdutainmentControllerRef
    on AutoDisposeAsyncNotifierProviderRef<EdutainmentEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DetailEdutainmentControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailEdutainmentController,
        EdutainmentEntity> with DetailEdutainmentControllerRef {
  _DetailEdutainmentControllerProviderElement(super.provider);

  @override
  int get id => (origin as DetailEdutainmentControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
