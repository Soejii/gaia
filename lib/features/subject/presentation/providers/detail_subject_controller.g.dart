// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_subject_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailSubjectControllerHash() =>
    r'e0a81d9fa6970dd493f786c2a16231fe5b1721b3';

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

abstract class _$DetailSubjectController
    extends BuildlessAutoDisposeAsyncNotifier<SubjectEntity> {
  late final int subjectId;

  FutureOr<SubjectEntity> build(
    int subjectId,
  );
}

/// See also [DetailSubjectController].
@ProviderFor(DetailSubjectController)
const detailSubjectControllerProvider = DetailSubjectControllerFamily();

/// See also [DetailSubjectController].
class DetailSubjectControllerFamily extends Family<AsyncValue<SubjectEntity>> {
  /// See also [DetailSubjectController].
  const DetailSubjectControllerFamily();

  /// See also [DetailSubjectController].
  DetailSubjectControllerProvider call(
    int subjectId,
  ) {
    return DetailSubjectControllerProvider(
      subjectId,
    );
  }

  @override
  DetailSubjectControllerProvider getProviderOverride(
    covariant DetailSubjectControllerProvider provider,
  ) {
    return call(
      provider.subjectId,
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
  String? get name => r'detailSubjectControllerProvider';
}

/// See also [DetailSubjectController].
class DetailSubjectControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailSubjectController,
        SubjectEntity> {
  /// See also [DetailSubjectController].
  DetailSubjectControllerProvider(
    int subjectId,
  ) : this._internal(
          () => DetailSubjectController()..subjectId = subjectId,
          from: detailSubjectControllerProvider,
          name: r'detailSubjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailSubjectControllerHash,
          dependencies: DetailSubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailSubjectControllerFamily._allTransitiveDependencies,
          subjectId: subjectId,
        );

  DetailSubjectControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.subjectId,
  }) : super.internal();

  final int subjectId;

  @override
  FutureOr<SubjectEntity> runNotifierBuild(
    covariant DetailSubjectController notifier,
  ) {
    return notifier.build(
      subjectId,
    );
  }

  @override
  Override overrideWith(DetailSubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailSubjectControllerProvider._internal(
        () => create()..subjectId = subjectId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        subjectId: subjectId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailSubjectController,
      SubjectEntity> createElement() {
    return _DetailSubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailSubjectControllerProvider &&
        other.subjectId == subjectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, subjectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailSubjectControllerRef
    on AutoDisposeAsyncNotifierProviderRef<SubjectEntity> {
  /// The parameter `subjectId` of this provider.
  int get subjectId;
}

class _DetailSubjectControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailSubjectController,
        SubjectEntity> with DetailSubjectControllerRef {
  _DetailSubjectControllerProviderElement(super.provider);

  @override
  int get subjectId => (origin as DetailSubjectControllerProvider).subjectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
