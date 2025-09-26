// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discussion_subject_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$discussionSubjectControllerHash() =>
    r'455d954ece9ee57ac265563fcf53b909410b14a4';

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

abstract class _$DiscussionSubjectController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<DiscussionEntity>>> {
  late final int idSubject;

  AsyncValue<Paged<DiscussionEntity>> build(
    int idSubject,
  );
}

/// See also [DiscussionSubjectController].
@ProviderFor(DiscussionSubjectController)
const discussionSubjectControllerProvider = DiscussionSubjectControllerFamily();

/// See also [DiscussionSubjectController].
class DiscussionSubjectControllerFamily
    extends Family<AsyncValue<Paged<DiscussionEntity>>> {
  /// See also [DiscussionSubjectController].
  const DiscussionSubjectControllerFamily();

  /// See also [DiscussionSubjectController].
  DiscussionSubjectControllerProvider call(
    int idSubject,
  ) {
    return DiscussionSubjectControllerProvider(
      idSubject,
    );
  }

  @override
  DiscussionSubjectControllerProvider getProviderOverride(
    covariant DiscussionSubjectControllerProvider provider,
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
  String? get name => r'discussionSubjectControllerProvider';
}

/// See also [DiscussionSubjectController].
class DiscussionSubjectControllerProvider
    extends AutoDisposeNotifierProviderImpl<DiscussionSubjectController,
        AsyncValue<Paged<DiscussionEntity>>> {
  /// See also [DiscussionSubjectController].
  DiscussionSubjectControllerProvider(
    int idSubject,
  ) : this._internal(
          () => DiscussionSubjectController()..idSubject = idSubject,
          from: discussionSubjectControllerProvider,
          name: r'discussionSubjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$discussionSubjectControllerHash,
          dependencies: DiscussionSubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              DiscussionSubjectControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
        );

  DiscussionSubjectControllerProvider._internal(
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
  AsyncValue<Paged<DiscussionEntity>> runNotifierBuild(
    covariant DiscussionSubjectController notifier,
  ) {
    return notifier.build(
      idSubject,
    );
  }

  @override
  Override overrideWith(DiscussionSubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DiscussionSubjectControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<DiscussionSubjectController,
      AsyncValue<Paged<DiscussionEntity>>> createElement() {
    return _DiscussionSubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DiscussionSubjectControllerProvider &&
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
mixin DiscussionSubjectControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<DiscussionEntity>>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;
}

class _DiscussionSubjectControllerProviderElement
    extends AutoDisposeNotifierProviderElement<DiscussionSubjectController,
        AsyncValue<Paged<DiscussionEntity>>>
    with DiscussionSubjectControllerRef {
  _DiscussionSubjectControllerProviderElement(super.provider);

  @override
  int get idSubject =>
      (origin as DiscussionSubjectControllerProvider).idSubject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
