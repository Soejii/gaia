// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_discussion_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailDiscussionControllerHash() =>
    r'054503d2829ce25b0e0ef180f7fa931df4d8af39';

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

abstract class _$DetailDiscussionController
    extends BuildlessAutoDisposeAsyncNotifier<DetailDiscussionEntity> {
  late final int idDiscuss;

  FutureOr<DetailDiscussionEntity> build(
    int idDiscuss,
  );
}

/// See also [DetailDiscussionController].
@ProviderFor(DetailDiscussionController)
const detailDiscussionControllerProvider = DetailDiscussionControllerFamily();

/// See also [DetailDiscussionController].
class DetailDiscussionControllerFamily
    extends Family<AsyncValue<DetailDiscussionEntity>> {
  /// See also [DetailDiscussionController].
  const DetailDiscussionControllerFamily();

  /// See also [DetailDiscussionController].
  DetailDiscussionControllerProvider call(
    int idDiscuss,
  ) {
    return DetailDiscussionControllerProvider(
      idDiscuss,
    );
  }

  @override
  DetailDiscussionControllerProvider getProviderOverride(
    covariant DetailDiscussionControllerProvider provider,
  ) {
    return call(
      provider.idDiscuss,
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
  String? get name => r'detailDiscussionControllerProvider';
}

/// See also [DetailDiscussionController].
class DetailDiscussionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailDiscussionController,
        DetailDiscussionEntity> {
  /// See also [DetailDiscussionController].
  DetailDiscussionControllerProvider(
    int idDiscuss,
  ) : this._internal(
          () => DetailDiscussionController()..idDiscuss = idDiscuss,
          from: detailDiscussionControllerProvider,
          name: r'detailDiscussionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailDiscussionControllerHash,
          dependencies: DetailDiscussionControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailDiscussionControllerFamily._allTransitiveDependencies,
          idDiscuss: idDiscuss,
        );

  DetailDiscussionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idDiscuss,
  }) : super.internal();

  final int idDiscuss;

  @override
  FutureOr<DetailDiscussionEntity> runNotifierBuild(
    covariant DetailDiscussionController notifier,
  ) {
    return notifier.build(
      idDiscuss,
    );
  }

  @override
  Override overrideWith(DetailDiscussionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailDiscussionControllerProvider._internal(
        () => create()..idDiscuss = idDiscuss,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idDiscuss: idDiscuss,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailDiscussionController,
      DetailDiscussionEntity> createElement() {
    return _DetailDiscussionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailDiscussionControllerProvider &&
        other.idDiscuss == idDiscuss;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idDiscuss.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailDiscussionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<DetailDiscussionEntity> {
  /// The parameter `idDiscuss` of this provider.
  int get idDiscuss;
}

class _DetailDiscussionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailDiscussionController,
        DetailDiscussionEntity> with DetailDiscussionControllerRef {
  _DetailDiscussionControllerProviderElement(super.provider);

  @override
  int get idDiscuss => (origin as DetailDiscussionControllerProvider).idDiscuss;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
