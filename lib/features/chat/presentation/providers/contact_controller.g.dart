// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactControllerHash() => r'36aef0752e27a683ba7c2a8d8a916a551d7b0602';

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
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<ContactEntity>>> {
  late final ChatRole role;

  AsyncValue<Paged<ContactEntity>> build(
    ChatRole role,
  );
}

/// See also [ContactController].
@ProviderFor(ContactController)
const contactControllerProvider = ContactControllerFamily();

/// See also [ContactController].
class ContactControllerFamily extends Family<AsyncValue<Paged<ContactEntity>>> {
  /// See also [ContactController].
  const ContactControllerFamily();

  /// See also [ContactController].
  ContactControllerProvider call(
    ChatRole role,
  ) {
    return ContactControllerProvider(
      role,
    );
  }

  @override
  ContactControllerProvider getProviderOverride(
    covariant ContactControllerProvider provider,
  ) {
    return call(
      provider.role,
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
    ContactController, AsyncValue<Paged<ContactEntity>>> {
  /// See also [ContactController].
  ContactControllerProvider(
    ChatRole role,
  ) : this._internal(
          () => ContactController()..role = role,
          from: contactControllerProvider,
          name: r'contactControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactControllerHash,
          dependencies: ContactControllerFamily._dependencies,
          allTransitiveDependencies:
              ContactControllerFamily._allTransitiveDependencies,
          role: role,
        );

  ContactControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.role,
  }) : super.internal();

  final ChatRole role;

  @override
  AsyncValue<Paged<ContactEntity>> runNotifierBuild(
    covariant ContactController notifier,
  ) {
    return notifier.build(
      role,
    );
  }

  @override
  Override overrideWith(ContactController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ContactControllerProvider._internal(
        () => create()..role = role,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        role: role,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ContactController,
      AsyncValue<Paged<ContactEntity>>> createElement() {
    return _ContactControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactControllerProvider && other.role == role;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, role.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ContactControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<ContactEntity>>> {
  /// The parameter `role` of this provider.
  ChatRole get role;
}

class _ContactControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ContactController,
        AsyncValue<Paged<ContactEntity>>> with ContactControllerRef {
  _ContactControllerProviderElement(super.provider);

  @override
  ChatRole get role => (origin as ContactControllerProvider).role;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
