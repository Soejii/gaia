// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_subject_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moduleSubjectControllerHash() =>
    r'a9c5ce8bcf298987e534b664fa23f8e88db59f54';

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

abstract class _$ModuleSubjectController
    extends BuildlessAutoDisposeAsyncNotifier<List<ModuleEntity>> {
  late final int idSubject;

  FutureOr<List<ModuleEntity>> build(
    int idSubject,
  );
}

/// See also [ModuleSubjectController].
@ProviderFor(ModuleSubjectController)
const moduleSubjectControllerProvider = ModuleSubjectControllerFamily();

/// See also [ModuleSubjectController].
class ModuleSubjectControllerFamily
    extends Family<AsyncValue<List<ModuleEntity>>> {
  /// See also [ModuleSubjectController].
  const ModuleSubjectControllerFamily();

  /// See also [ModuleSubjectController].
  ModuleSubjectControllerProvider call(
    int idSubject,
  ) {
    return ModuleSubjectControllerProvider(
      idSubject,
    );
  }

  @override
  ModuleSubjectControllerProvider getProviderOverride(
    covariant ModuleSubjectControllerProvider provider,
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
  String? get name => r'moduleSubjectControllerProvider';
}

/// See also [ModuleSubjectController].
class ModuleSubjectControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ModuleSubjectController,
        List<ModuleEntity>> {
  /// See also [ModuleSubjectController].
  ModuleSubjectControllerProvider(
    int idSubject,
  ) : this._internal(
          () => ModuleSubjectController()..idSubject = idSubject,
          from: moduleSubjectControllerProvider,
          name: r'moduleSubjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moduleSubjectControllerHash,
          dependencies: ModuleSubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              ModuleSubjectControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
        );

  ModuleSubjectControllerProvider._internal(
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
    covariant ModuleSubjectController notifier,
  ) {
    return notifier.build(
      idSubject,
    );
  }

  @override
  Override overrideWith(ModuleSubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ModuleSubjectControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ModuleSubjectController,
      List<ModuleEntity>> createElement() {
    return _ModuleSubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ModuleSubjectControllerProvider &&
        other.idSubject == idSubject;
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
mixin ModuleSubjectControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ModuleEntity>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;
}

class _ModuleSubjectControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ModuleSubjectController,
        List<ModuleEntity>> with ModuleSubjectControllerRef {
  _ModuleSubjectControllerProviderElement(super.provider);

  @override
  int get idSubject => (origin as ModuleSubjectControllerProvider).idSubject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
