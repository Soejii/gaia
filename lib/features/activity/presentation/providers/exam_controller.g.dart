// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$examControllerHash() => r'b4df037138792d368a03b376e380a3460772a1e9';

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

abstract class _$ExamController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<ExamEntity>>> {
  late final ExamType type;

  AsyncValue<Paged<ExamEntity>> build(
    ExamType type,
  );
}

/// See also [ExamController].
@ProviderFor(ExamController)
const examControllerProvider = ExamControllerFamily();

/// See also [ExamController].
class ExamControllerFamily extends Family<AsyncValue<Paged<ExamEntity>>> {
  /// See also [ExamController].
  const ExamControllerFamily();

  /// See also [ExamController].
  ExamControllerProvider call(
    ExamType type,
  ) {
    return ExamControllerProvider(
      type,
    );
  }

  @override
  ExamControllerProvider getProviderOverride(
    covariant ExamControllerProvider provider,
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
  String? get name => r'examControllerProvider';
}

/// See also [ExamController].
class ExamControllerProvider extends AutoDisposeNotifierProviderImpl<
    ExamController, AsyncValue<Paged<ExamEntity>>> {
  /// See also [ExamController].
  ExamControllerProvider(
    ExamType type,
  ) : this._internal(
          () => ExamController()..type = type,
          from: examControllerProvider,
          name: r'examControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$examControllerHash,
          dependencies: ExamControllerFamily._dependencies,
          allTransitiveDependencies:
              ExamControllerFamily._allTransitiveDependencies,
          type: type,
        );

  ExamControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final ExamType type;

  @override
  AsyncValue<Paged<ExamEntity>> runNotifierBuild(
    covariant ExamController notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(ExamController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExamControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<ExamController,
      AsyncValue<Paged<ExamEntity>>> createElement() {
    return _ExamControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExamControllerProvider && other.type == type;
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
mixin ExamControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<ExamEntity>>> {
  /// The parameter `type` of this provider.
  ExamType get type;
}

class _ExamControllerProviderElement extends AutoDisposeNotifierProviderElement<
    ExamController, AsyncValue<Paged<ExamEntity>>> with ExamControllerRef {
  _ExamControllerProviderElement(super.provider);

  @override
  ExamType get type => (origin as ExamControllerProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
