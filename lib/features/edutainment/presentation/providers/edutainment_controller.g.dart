// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edutainment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$edutainmentControllerHash() =>
    r'58660fa3b6d089ec0922353dc206f0c2e710f817';

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

abstract class _$EdutainmentController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<EdutainmentEntity>>> {
  late final EdutainmentType type;

  AsyncValue<Paged<EdutainmentEntity>> build(
    EdutainmentType type,
  );
}

/// See also [EdutainmentController].
@ProviderFor(EdutainmentController)
const edutainmentControllerProvider = EdutainmentControllerFamily();

/// See also [EdutainmentController].
class EdutainmentControllerFamily
    extends Family<AsyncValue<Paged<EdutainmentEntity>>> {
  /// See also [EdutainmentController].
  const EdutainmentControllerFamily();

  /// See also [EdutainmentController].
  EdutainmentControllerProvider call(
    EdutainmentType type,
  ) {
    return EdutainmentControllerProvider(
      type,
    );
  }

  @override
  EdutainmentControllerProvider getProviderOverride(
    covariant EdutainmentControllerProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'edutainmentControllerProvider';
}

/// See also [EdutainmentController].
class EdutainmentControllerProvider extends AutoDisposeNotifierProviderImpl<
    EdutainmentController, AsyncValue<Paged<EdutainmentEntity>>> {
  /// See also [EdutainmentController].
  EdutainmentControllerProvider(
    EdutainmentType type,
  ) : this._internal(
          () => EdutainmentController()..type = type,
          from: edutainmentControllerProvider,
          name: r'edutainmentControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$edutainmentControllerHash,
          dependencies: EdutainmentControllerFamily._dependencies,
          allTransitiveDependencies:
              EdutainmentControllerFamily._allTransitiveDependencies,
          type: type,
        );

  EdutainmentControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final EdutainmentType type;

  @override
  AsyncValue<Paged<EdutainmentEntity>> runNotifierBuild(
    covariant EdutainmentController notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(EdutainmentController Function() create) {
    return ProviderOverride(
      origin: this,
      override: EdutainmentControllerProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EdutainmentController,
      AsyncValue<Paged<EdutainmentEntity>>> createElement() {
    return _EdutainmentControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EdutainmentControllerProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EdutainmentControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<EdutainmentEntity>>> {
  /// The parameter `type` of this provider.
  EdutainmentType get type;
}

class _EdutainmentControllerProviderElement
    extends AutoDisposeNotifierProviderElement<EdutainmentController,
        AsyncValue<Paged<EdutainmentEntity>>> with EdutainmentControllerRef {
  _EdutainmentControllerProviderElement(super.provider);

  @override
  EdutainmentType get type => (origin as EdutainmentControllerProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
