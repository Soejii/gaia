// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_subject_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskSubjectControllerHash() =>
    r'bb7364a4eca9c57c729863d8bae1846e36fa9e11';

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

abstract class _$TaskSubjectController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<TaskEntity>>> {
  late final int idSubject;

  AsyncValue<Paged<TaskEntity>> build(
    int idSubject,
  );
}

/// See also [TaskSubjectController].
@ProviderFor(TaskSubjectController)
const taskSubjectControllerProvider = TaskSubjectControllerFamily();

/// See also [TaskSubjectController].
class TaskSubjectControllerFamily
    extends Family<AsyncValue<Paged<TaskEntity>>> {
  /// See also [TaskSubjectController].
  const TaskSubjectControllerFamily();

  /// See also [TaskSubjectController].
  TaskSubjectControllerProvider call(
    int idSubject,
  ) {
    return TaskSubjectControllerProvider(
      idSubject,
    );
  }

  @override
  TaskSubjectControllerProvider getProviderOverride(
    covariant TaskSubjectControllerProvider provider,
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
  String? get name => r'taskSubjectControllerProvider';
}

/// See also [TaskSubjectController].
class TaskSubjectControllerProvider extends AutoDisposeNotifierProviderImpl<
    TaskSubjectController, AsyncValue<Paged<TaskEntity>>> {
  /// See also [TaskSubjectController].
  TaskSubjectControllerProvider(
    int idSubject,
  ) : this._internal(
          () => TaskSubjectController()..idSubject = idSubject,
          from: taskSubjectControllerProvider,
          name: r'taskSubjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$taskSubjectControllerHash,
          dependencies: TaskSubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              TaskSubjectControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
        );

  TaskSubjectControllerProvider._internal(
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
  AsyncValue<Paged<TaskEntity>> runNotifierBuild(
    covariant TaskSubjectController notifier,
  ) {
    return notifier.build(
      idSubject,
    );
  }

  @override
  Override overrideWith(TaskSubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TaskSubjectControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<TaskSubjectController,
      AsyncValue<Paged<TaskEntity>>> createElement() {
    return _TaskSubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskSubjectControllerProvider &&
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
mixin TaskSubjectControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<TaskEntity>>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;
}

class _TaskSubjectControllerProviderElement
    extends AutoDisposeNotifierProviderElement<TaskSubjectController,
        AsyncValue<Paged<TaskEntity>>> with TaskSubjectControllerRef {
  _TaskSubjectControllerProviderElement(super.provider);

  @override
  int get idSubject => (origin as TaskSubjectControllerProvider).idSubject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
