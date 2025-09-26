// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_sub_module_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailSubModuleControllerHash() =>
    r'79028eec48ccc472af7f3408f38b26582e7e3640';

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

abstract class _$DetailSubModuleController
    extends BuildlessAutoDisposeAsyncNotifier<DetailSubModuleEntity> {
  late final int idSubModule;

  FutureOr<DetailSubModuleEntity> build(
    int idSubModule,
  );
}

/// See also [DetailSubModuleController].
@ProviderFor(DetailSubModuleController)
const detailSubModuleControllerProvider = DetailSubModuleControllerFamily();

/// See also [DetailSubModuleController].
class DetailSubModuleControllerFamily
    extends Family<AsyncValue<DetailSubModuleEntity>> {
  /// See also [DetailSubModuleController].
  const DetailSubModuleControllerFamily();

  /// See also [DetailSubModuleController].
  DetailSubModuleControllerProvider call(
    int idSubModule,
  ) {
    return DetailSubModuleControllerProvider(
      idSubModule,
    );
  }

  @override
  DetailSubModuleControllerProvider getProviderOverride(
    covariant DetailSubModuleControllerProvider provider,
  ) {
    return call(
      provider.idSubModule,
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
  String? get name => r'detailSubModuleControllerProvider';
}

/// See also [DetailSubModuleController].
class DetailSubModuleControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailSubModuleController,
        DetailSubModuleEntity> {
  /// See also [DetailSubModuleController].
  DetailSubModuleControllerProvider(
    int idSubModule,
  ) : this._internal(
          () => DetailSubModuleController()..idSubModule = idSubModule,
          from: detailSubModuleControllerProvider,
          name: r'detailSubModuleControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailSubModuleControllerHash,
          dependencies: DetailSubModuleControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailSubModuleControllerFamily._allTransitiveDependencies,
          idSubModule: idSubModule,
        );

  DetailSubModuleControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idSubModule,
  }) : super.internal();

  final int idSubModule;

  @override
  FutureOr<DetailSubModuleEntity> runNotifierBuild(
    covariant DetailSubModuleController notifier,
  ) {
    return notifier.build(
      idSubModule,
    );
  }

  @override
  Override overrideWith(DetailSubModuleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailSubModuleControllerProvider._internal(
        () => create()..idSubModule = idSubModule,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idSubModule: idSubModule,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailSubModuleController,
      DetailSubModuleEntity> createElement() {
    return _DetailSubModuleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailSubModuleControllerProvider &&
        other.idSubModule == idSubModule;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idSubModule.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailSubModuleControllerRef
    on AutoDisposeAsyncNotifierProviderRef<DetailSubModuleEntity> {
  /// The parameter `idSubModule` of this provider.
  int get idSubModule;
}

class _DetailSubModuleControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailSubModuleController,
        DetailSubModuleEntity> with DetailSubModuleControllerRef {
  _DetailSubModuleControllerProviderElement(super.provider);

  @override
  int get idSubModule =>
      (origin as DetailSubModuleControllerProvider).idSubModule;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
