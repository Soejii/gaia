// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_task_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailTaskControllerHash() =>
    r'ef479afdc9f407cda9f794288b9ef482fc3f15a5';

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

abstract class _$DetailTaskController
    extends BuildlessAutoDisposeAsyncNotifier<DetailTaskEntity> {
  late final int idTask;

  FutureOr<DetailTaskEntity> build(
    int idTask,
  );
}

/// See also [DetailTaskController].
@ProviderFor(DetailTaskController)
const detailTaskControllerProvider = DetailTaskControllerFamily();

/// See also [DetailTaskController].
class DetailTaskControllerFamily extends Family<AsyncValue<DetailTaskEntity>> {
  /// See also [DetailTaskController].
  const DetailTaskControllerFamily();

  /// See also [DetailTaskController].
  DetailTaskControllerProvider call(
    int idTask,
  ) {
    return DetailTaskControllerProvider(
      idTask,
    );
  }

  @override
  DetailTaskControllerProvider getProviderOverride(
    covariant DetailTaskControllerProvider provider,
  ) {
    return call(
      provider.idTask,
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
  String? get name => r'detailTaskControllerProvider';
}

/// See also [DetailTaskController].
class DetailTaskControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DetailTaskController, DetailTaskEntity> {
  /// See also [DetailTaskController].
  DetailTaskControllerProvider(
    int idTask,
  ) : this._internal(
          () => DetailTaskController()..idTask = idTask,
          from: detailTaskControllerProvider,
          name: r'detailTaskControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailTaskControllerHash,
          dependencies: DetailTaskControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailTaskControllerFamily._allTransitiveDependencies,
          idTask: idTask,
        );

  DetailTaskControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idTask,
  }) : super.internal();

  final int idTask;

  @override
  FutureOr<DetailTaskEntity> runNotifierBuild(
    covariant DetailTaskController notifier,
  ) {
    return notifier.build(
      idTask,
    );
  }

  @override
  Override overrideWith(DetailTaskController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailTaskControllerProvider._internal(
        () => create()..idTask = idTask,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idTask: idTask,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailTaskController,
      DetailTaskEntity> createElement() {
    return _DetailTaskControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailTaskControllerProvider && other.idTask == idTask;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idTask.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailTaskControllerRef
    on AutoDisposeAsyncNotifierProviderRef<DetailTaskEntity> {
  /// The parameter `idTask` of this provider.
  int get idTask;
}

class _DetailTaskControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailTaskController,
        DetailTaskEntity> with DetailTaskControllerRef {
  _DetailTaskControllerProviderElement(super.provider);

  @override
  int get idTask => (origin as DetailTaskControllerProvider).idTask;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
