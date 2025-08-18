// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityControllerHash() =>
    r'6bdf0dc50e088ef46161ada85f1202482f26a18e';

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

abstract class _$ActivityController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<ExamEntity>>> {
  late final ExamType type;

  AsyncValue<Paged<ExamEntity>> build(
    ExamType type,
  );
}

/// See also [ActivityController].
@ProviderFor(ActivityController)
const activityControllerProvider = ActivityControllerFamily();

/// See also [ActivityController].
class ActivityControllerFamily extends Family<AsyncValue<Paged<ExamEntity>>> {
  /// See also [ActivityController].
  const ActivityControllerFamily();

  /// See also [ActivityController].
  ActivityControllerProvider call(
    ExamType type,
  ) {
    return ActivityControllerProvider(
      type,
    );
  }

  @override
  ActivityControllerProvider getProviderOverride(
    covariant ActivityControllerProvider provider,
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
  String? get name => r'activityControllerProvider';
}

/// See also [ActivityController].
class ActivityControllerProvider extends AutoDisposeNotifierProviderImpl<
    ActivityController, AsyncValue<Paged<ExamEntity>>> {
  /// See also [ActivityController].
  ActivityControllerProvider(
    ExamType type,
  ) : this._internal(
          () => ActivityController()..type = type,
          from: activityControllerProvider,
          name: r'activityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activityControllerHash,
          dependencies: ActivityControllerFamily._dependencies,
          allTransitiveDependencies:
              ActivityControllerFamily._allTransitiveDependencies,
          type: type,
        );

  ActivityControllerProvider._internal(
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
    covariant ActivityController notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(ActivityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActivityControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActivityController,
      AsyncValue<Paged<ExamEntity>>> createElement() {
    return _ActivityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActivityControllerProvider && other.type == type;
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
mixin ActivityControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<ExamEntity>>> {
  /// The parameter `type` of this provider.
  ExamType get type;
}

class _ActivityControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ActivityController,
        AsyncValue<Paged<ExamEntity>>> with ActivityControllerRef {
  _ActivityControllerProviderElement(super.provider);

  @override
  ExamType get type => (origin as ActivityControllerProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
