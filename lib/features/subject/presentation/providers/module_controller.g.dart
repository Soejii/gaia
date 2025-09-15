// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moduleControllerHash() => r'ccf1f6fcd2851b6e6102c52fda511a52863cca52';

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

abstract class _$ModuleController
    extends BuildlessAutoDisposeAsyncNotifier<List<ModuleEntity>> {
  late final int idSubject;

  FutureOr<List<ModuleEntity>> build(
    int idSubject,
  );
}

/// See also [ModuleController].
@ProviderFor(ModuleController)
const moduleControllerProvider = ModuleControllerFamily();

/// See also [ModuleController].
class ModuleControllerFamily extends Family<AsyncValue<List<ModuleEntity>>> {
  /// See also [ModuleController].
  const ModuleControllerFamily();

  /// See also [ModuleController].
  ModuleControllerProvider call(
    int idSubject,
  ) {
    return ModuleControllerProvider(
      idSubject,
    );
  }

  @override
  ModuleControllerProvider getProviderOverride(
    covariant ModuleControllerProvider provider,
  ) {
    return call(
      provider.idSubject,
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
  String? get name => r'moduleControllerProvider';
}

/// See also [ModuleController].
class ModuleControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ModuleController, List<ModuleEntity>> {
  /// See also [ModuleController].
  ModuleControllerProvider(
    int idSubject,
  ) : this._internal(
          () => ModuleController()..idSubject = idSubject,
          from: moduleControllerProvider,
          name: r'moduleControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moduleControllerHash,
          dependencies: ModuleControllerFamily._dependencies,
          allTransitiveDependencies:
              ModuleControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
        );

  ModuleControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idSubject,
  }) : super.internal();

  final int idSubject;

  @override
  FutureOr<List<ModuleEntity>> runNotifierBuild(
    covariant ModuleController notifier,
  ) {
    return notifier.build(
      idSubject,
    );
  }

  @override
  Override overrideWith(ModuleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ModuleControllerProvider._internal(
        () => create()..idSubject = idSubject,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idSubject: idSubject,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ModuleController, List<ModuleEntity>>
      createElement() {
    return _ModuleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ModuleControllerProvider && other.idSubject == idSubject;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idSubject.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ModuleControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ModuleEntity>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;
}

class _ModuleControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ModuleController,
        List<ModuleEntity>> with ModuleControllerRef {
  _ModuleControllerProviderElement(super.provider);

  @override
  int get idSubject => (origin as ModuleControllerProvider).idSubject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
