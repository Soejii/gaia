// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactControllerHash() => r'e6903c07085e15b5264e9fb139b51bc0e7eb0b23';

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

abstract class _$ContactController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<ChatContactEntity>>> {
  late final String roleName;

  AsyncValue<Paged<ChatContactEntity>> build(
    String roleName,
  );
}

/// See also [ContactController].
@ProviderFor(ContactController)
const contactControllerProvider = ContactControllerFamily();

/// See also [ContactController].
class ContactControllerFamily
    extends Family<AsyncValue<Paged<ChatContactEntity>>> {
  /// See also [ContactController].
  const ContactControllerFamily();

  /// See also [ContactController].
  ContactControllerProvider call(
    String roleName,
  ) {
    return ContactControllerProvider(
      roleName,
    );
  }

  @override
  ContactControllerProvider getProviderOverride(
    covariant ContactControllerProvider provider,
  ) {
    return call(
      provider.roleName,
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
  String? get name => r'contactControllerProvider';
}

/// See also [ContactController].
class ContactControllerProvider extends AutoDisposeNotifierProviderImpl<
    ContactController, AsyncValue<Paged<ChatContactEntity>>> {
  /// See also [ContactController].
  ContactControllerProvider(
    String roleName,
  ) : this._internal(
          () => ContactController()..roleName = roleName,
          from: contactControllerProvider,
          name: r'contactControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactControllerHash,
          dependencies: ContactControllerFamily._dependencies,
          allTransitiveDependencies:
              ContactControllerFamily._allTransitiveDependencies,
          roleName: roleName,
        );

  ContactControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.roleName,
  }) : super.internal();

  final String roleName;

  @override
  AsyncValue<Paged<ChatContactEntity>> runNotifierBuild(
    covariant ContactController notifier,
  ) {
    return notifier.build(
      roleName,
    );
  }

  @override
  Override overrideWith(ContactController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ContactControllerProvider._internal(
        () => create()..roleName = roleName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        roleName: roleName,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ContactController,
      AsyncValue<Paged<ChatContactEntity>>> createElement() {
    return _ContactControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactControllerProvider && other.roleName == roleName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roleName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ContactControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<ChatContactEntity>>> {
  /// The parameter `roleName` of this provider.
  String get roleName;
}

class _ContactControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ContactController,
        AsyncValue<Paged<ChatContactEntity>>> with ContactControllerRef {
  _ContactControllerProviderElement(super.provider);

  @override
  String get roleName => (origin as ContactControllerProvider).roleName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
