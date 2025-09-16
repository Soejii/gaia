// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaControllerHash() => r'f5c85e377b49725eb6e449cbec909ffa6fd5bf76';

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

abstract class _$MediaController
    extends BuildlessAutoDisposeAsyncNotifier<List<MediaEntity>> {
  late final int idSubject;

  FutureOr<List<MediaEntity>> build(
    int idSubject,
  );
}

/// See also [MediaController].
@ProviderFor(MediaController)
const mediaControllerProvider = MediaControllerFamily();

/// See also [MediaController].
class MediaControllerFamily extends Family<AsyncValue<List<MediaEntity>>> {
  /// See also [MediaController].
  const MediaControllerFamily();

  /// See also [MediaController].
  MediaControllerProvider call(
    int idSubject,
  ) {
    return MediaControllerProvider(
      idSubject,
    );
  }

  @override
  MediaControllerProvider getProviderOverride(
    covariant MediaControllerProvider provider,
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
  String? get name => r'mediaControllerProvider';
}

/// See also [MediaController].
class MediaControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MediaController, List<MediaEntity>> {
  /// See also [MediaController].
  MediaControllerProvider(
    int idSubject,
  ) : this._internal(
          () => MediaController()..idSubject = idSubject,
          from: mediaControllerProvider,
          name: r'mediaControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaControllerHash,
          dependencies: MediaControllerFamily._dependencies,
          allTransitiveDependencies:
              MediaControllerFamily._allTransitiveDependencies,
          idSubject: idSubject,
        );

  MediaControllerProvider._internal(
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
  FutureOr<List<MediaEntity>> runNotifierBuild(
    covariant MediaController notifier,
  ) {
    return notifier.build(
      idSubject,
    );
  }

  @override
  Override overrideWith(MediaController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MediaControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MediaController, List<MediaEntity>>
      createElement() {
    return _MediaControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaControllerProvider && other.idSubject == idSubject;
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
mixin MediaControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<MediaEntity>> {
  /// The parameter `idSubject` of this provider.
  int get idSubject;
}

class _MediaControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MediaController,
        List<MediaEntity>> with MediaControllerRef {
  _MediaControllerProviderElement(super.provider);

  @override
  int get idSubject => (origin as MediaControllerProvider).idSubject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
