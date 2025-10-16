// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_contact_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatContactControllerHash() =>
    r'5da6b40c59c2cc6d3565e1377350ed672df4f5e0';

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

abstract class _$ChatContactController
    extends BuildlessAutoDisposeNotifier<AsyncValue<Paged<ChatContactEntity>>> {
  late final String roleName;

  AsyncValue<Paged<ChatContactEntity>> build(
    String roleName,
  );
}

/// See also [ChatContactController].
@ProviderFor(ChatContactController)
const chatContactControllerProvider = ChatContactControllerFamily();

/// See also [ChatContactController].
class ChatContactControllerFamily
    extends Family<AsyncValue<Paged<ChatContactEntity>>> {
  /// See also [ChatContactController].
  const ChatContactControllerFamily();

  /// See also [ChatContactController].
  ChatContactControllerProvider call(
    String roleName,
  ) {
    return ChatContactControllerProvider(
      roleName,
    );
  }

  @override
  ChatContactControllerProvider getProviderOverride(
    covariant ChatContactControllerProvider provider,
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
  String? get name => r'chatContactControllerProvider';
}

/// See also [ChatContactController].
class ChatContactControllerProvider extends AutoDisposeNotifierProviderImpl<
    ChatContactController, AsyncValue<Paged<ChatContactEntity>>> {
  /// See also [ChatContactController].
  ChatContactControllerProvider(
    String roleName,
  ) : this._internal(
          () => ChatContactController()..roleName = roleName,
          from: chatContactControllerProvider,
          name: r'chatContactControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatContactControllerHash,
          dependencies: ChatContactControllerFamily._dependencies,
          allTransitiveDependencies:
              ChatContactControllerFamily._allTransitiveDependencies,
          roleName: roleName,
        );

  ChatContactControllerProvider._internal(
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
    covariant ChatContactController notifier,
  ) {
    return notifier.build(
      roleName,
    );
  }

  @override
  Override overrideWith(ChatContactController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatContactControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChatContactController,
      AsyncValue<Paged<ChatContactEntity>>> createElement() {
    return _ChatContactControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatContactControllerProvider && other.roleName == roleName;
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
mixin ChatContactControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<Paged<ChatContactEntity>>> {
  /// The parameter `roleName` of this provider.
  String get roleName;
}

class _ChatContactControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ChatContactController,
        AsyncValue<Paged<ChatContactEntity>>> with ChatContactControllerRef {
  _ChatContactControllerProviderElement(super.provider);

  @override
  String get roleName => (origin as ChatContactControllerProvider).roleName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
