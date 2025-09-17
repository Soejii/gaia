// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_subject_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$examSubjectControllerHash() =>
    r'13f74bb2be7a490d66d0d7cdedd6bbbab0fca510';

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

abstract class _$ExamSubjectController
    extends BuildlessAutoDisposeAsyncNotifier<List<ExamEntity>> {
  late final int idSubject;
  late final ExamType type;

  FutureOr<List<ExamEntity>> build(
    int idSubject,
    ExamType type,
  );
}

/// See also [ExamSubjectController].
@ProviderFor(ExamSubjectController)
const examSubjectControllerProvider = ExamSubjectControllerFamily();

/// See also [ExamSubjectController].
class ExamSubjectControllerFamily extends Family<AsyncValue<List<ExamEntity>>> {
  /// See also [ExamSubjectController].
  const ExamSubjectControllerFamily();

  /// See also [ExamSubjectController].
  ExamSubjectControllerProvider call(
    int idSubject,
    ExamType type,
  ) {
    return ExamSubjectControllerProvider(
      idSubject,
      type,
    );
  }

  @override
  ExamSubjectControllerProvider getProviderOverride(
    covariant ExamSubjectControllerProvider provider,
  ) {
    return call(
      provider.idSubject,
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
  String? get name => r'examSubjectControllerProvider';
}

/// See also [ExamSubjectController].
class ExamSubjectControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ExamSubjectController,
        List<ExamEntity>> {
  /// See also [ExamSubjectController].
  ExamSubjectControllerProvider(
    int idSubject,
    ExamType type,
  ) : this._internal(
          () => ExamSubjectController()
            ..idSubject = idSubject
            ..type = type,
          from: examSubjectControllerProvider,
          name: r'examSubjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$examSubjectControllerHash,
          dependencies: ExamSubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              ExamSubjectControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
          type: type,
        );

  ExamSubjectControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idSubject,
    required this.type,
  }) : super.internal();

  final int idSubject;
  final ExamType type;

  @override
  FutureOr<List<ExamEntity>> runNotifierBuild(
    covariant ExamSubjectController notifier,
  ) {
    return notifier.build(
      idSubject,
      type,
    );
  }

  @override
  Override overrideWith(ExamSubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExamSubjectControllerProvider._internal(
        () => create()
          ..idSubject = idSubject
          ..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idSubject: idSubject,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ExamSubjectController,
      List<ExamEntity>> createElement() {
    return _ExamSubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExamSubjectControllerProvider &&
        other.idSubject == idSubject &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idSubject.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ExamSubjectControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ExamEntity>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;

  /// The parameter `type` of this provider.
  ExamType get type;
}

class _ExamSubjectControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ExamSubjectController,
        List<ExamEntity>> with ExamSubjectControllerRef {
  _ExamSubjectControllerProviderElement(super.provider);

  @override
  int get idSubject => (origin as ExamSubjectControllerProvider).idSubject;
  @override
  ExamType get type => (origin as ExamSubjectControllerProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
