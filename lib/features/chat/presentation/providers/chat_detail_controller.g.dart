// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatDetailEntityHash() => r'b316879f418445cbe320c2455971d1ad4c26efac';

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

/// See also [chatDetailEntity].
@ProviderFor(chatDetailEntity)
const chatDetailEntityProvider = ChatDetailEntityFamily();

/// See also [chatDetailEntity].
class ChatDetailEntityFamily extends Family<AsyncValue<ChatEntity>> {
  /// See also [chatDetailEntity].
  const ChatDetailEntityFamily();

  /// See also [chatDetailEntity].
  ChatDetailEntityProvider call(
    int userId,
  ) {
    return ChatDetailEntityProvider(
      userId,
    );
  }

  @override
  ChatDetailEntityProvider getProviderOverride(
    covariant ChatDetailEntityProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'chatDetailEntityProvider';
}

/// See also [chatDetailEntity].
class ChatDetailEntityProvider extends AutoDisposeFutureProvider<ChatEntity> {
  /// See also [chatDetailEntity].
  ChatDetailEntityProvider(
    int userId,
  ) : this._internal(
          (ref) => chatDetailEntity(
            ref as ChatDetailEntityRef,
            userId,
          ),
          from: chatDetailEntityProvider,
          name: r'chatDetailEntityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatDetailEntityHash,
          dependencies: ChatDetailEntityFamily._dependencies,
          allTransitiveDependencies:
              ChatDetailEntityFamily._allTransitiveDependencies,
          userId: userId,
        );

  ChatDetailEntityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  Override overrideWith(
    FutureOr<ChatEntity> Function(ChatDetailEntityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatDetailEntityProvider._internal(
        (ref) => create(ref as ChatDetailEntityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ChatEntity> createElement() {
    return _ChatDetailEntityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatDetailEntityProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatDetailEntityRef on AutoDisposeFutureProviderRef<ChatEntity> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _ChatDetailEntityProviderElement
    extends AutoDisposeFutureProviderElement<ChatEntity>
    with ChatDetailEntityRef {
  _ChatDetailEntityProviderElement(super.provider);

  @override
  int get userId => (origin as ChatDetailEntityProvider).userId;
}

String _$chatDetailControllerHash() =>
    r'069fd74de7d7541ee39dd6bf81ae5151a7c78d60';

abstract class _$ChatDetailController
    extends BuildlessAutoDisposeAsyncNotifier<Paged<ChatMessageEntity>> {
  late final int userId;

  FutureOr<Paged<ChatMessageEntity>> build(
    int userId,
  );
}

/// See also [ChatDetailController].
@ProviderFor(ChatDetailController)
const chatDetailControllerProvider = ChatDetailControllerFamily();

/// See also [ChatDetailController].
class ChatDetailControllerFamily
    extends Family<AsyncValue<Paged<ChatMessageEntity>>> {
  /// See also [ChatDetailController].
  const ChatDetailControllerFamily();

  /// See also [ChatDetailController].
  ChatDetailControllerProvider call(
    int userId,
  ) {
    return ChatDetailControllerProvider(
      userId,
    );
  }

  @override
  ChatDetailControllerProvider getProviderOverride(
    covariant ChatDetailControllerProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'chatDetailControllerProvider';
}

/// See also [ChatDetailController].
class ChatDetailControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ChatDetailController, Paged<ChatMessageEntity>> {
  /// See also [ChatDetailController].
  ChatDetailControllerProvider(
    int userId,
  ) : this._internal(
          () => ChatDetailController()..userId = userId,
          from: chatDetailControllerProvider,
          name: r'chatDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatDetailControllerHash,
          dependencies: ChatDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              ChatDetailControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  ChatDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  FutureOr<Paged<ChatMessageEntity>> runNotifierBuild(
    covariant ChatDetailController notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ChatDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatDetailControllerProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ChatDetailController,
      Paged<ChatMessageEntity>> createElement() {
    return _ChatDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatDetailControllerProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<Paged<ChatMessageEntity>> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _ChatDetailControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ChatDetailController,
        Paged<ChatMessageEntity>> with ChatDetailControllerRef {
  _ChatDetailControllerProviderElement(super.provider);

  @override
  int get userId => (origin as ChatDetailControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
