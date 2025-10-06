// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_task_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitTaskControllerHash() =>
    r'19a257351a35c4606bb0a69491904b9227aa68a0';

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

abstract class _$SubmitTaskController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final int taskId;

  FutureOr<void> build(
    int taskId,
  );
}

/// See also [SubmitTaskController].
@ProviderFor(SubmitTaskController)
const submitTaskControllerProvider = SubmitTaskControllerFamily();

/// See also [SubmitTaskController].
class SubmitTaskControllerFamily extends Family<AsyncValue<void>> {
  /// See also [SubmitTaskController].
  const SubmitTaskControllerFamily();

  /// See also [SubmitTaskController].
  SubmitTaskControllerProvider call(
    int taskId,
  ) {
    return SubmitTaskControllerProvider(
      taskId,
    );
  }

  @override
  SubmitTaskControllerProvider getProviderOverride(
    covariant SubmitTaskControllerProvider provider,
  ) {
    return call(
      provider.taskId,
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
  String? get name => r'submitTaskControllerProvider';
}

/// See also [SubmitTaskController].
class SubmitTaskControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SubmitTaskController, void> {
  /// See also [SubmitTaskController].
  SubmitTaskControllerProvider(
    int taskId,
  ) : this._internal(
          () => SubmitTaskController()..taskId = taskId,
          from: submitTaskControllerProvider,
          name: r'submitTaskControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$submitTaskControllerHash,
          dependencies: SubmitTaskControllerFamily._dependencies,
          allTransitiveDependencies:
              SubmitTaskControllerFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  SubmitTaskControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final int taskId;

  @override
  FutureOr<void> runNotifierBuild(
    covariant SubmitTaskController notifier,
  ) {
    return notifier.build(
      taskId,
    );
  }

  @override
  Override overrideWith(SubmitTaskController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitTaskControllerProvider._internal(
        () => create()..taskId = taskId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SubmitTaskController, void>
      createElement() {
    return _SubmitTaskControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitTaskControllerProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubmitTaskControllerRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `taskId` of this provider.
  int get taskId;
}

class _SubmitTaskControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SubmitTaskController, void>
    with SubmitTaskControllerRef {
  _SubmitTaskControllerProviderElement(super.provider);

  @override
  int get taskId => (origin as SubmitTaskControllerProvider).taskId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
