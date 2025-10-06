// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageControllerHash() => r'd48663145720b1a2d652c69b7da5396468b43332';

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

abstract class _$MessageController
    extends BuildlessAutoDisposeNotifier<AsyncValue<MessageState>> {
  late final int userId;

  AsyncValue<MessageState> build(
    int userId,
  );
}

/// See also [MessageController].
@ProviderFor(MessageController)
const messageControllerProvider = MessageControllerFamily();

/// See also [MessageController].
class MessageControllerFamily extends Family<AsyncValue<MessageState>> {
  /// See also [MessageController].
  const MessageControllerFamily();

  /// See also [MessageController].
  MessageControllerProvider call(
    int userId,
  ) {
    return MessageControllerProvider(
      userId,
    );
  }

  @override
  MessageControllerProvider getProviderOverride(
    covariant MessageControllerProvider provider,
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
  String? get name => r'messageControllerProvider';
}

/// See also [MessageController].
class MessageControllerProvider extends AutoDisposeNotifierProviderImpl<
    MessageController, AsyncValue<MessageState>> {
  /// See also [MessageController].
  MessageControllerProvider(
    int userId,
  ) : this._internal(
          () => MessageController()..userId = userId,
          from: messageControllerProvider,
          name: r'messageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageControllerHash,
          dependencies: MessageControllerFamily._dependencies,
          allTransitiveDependencies:
              MessageControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  MessageControllerProvider._internal(
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
  AsyncValue<MessageState> runNotifierBuild(
    covariant MessageController notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(MessageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<MessageController,
      AsyncValue<MessageState>> createElement() {
    return _MessageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageControllerProvider && other.userId == userId;
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
mixin MessageControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<MessageState>> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _MessageControllerProviderElement
    extends AutoDisposeNotifierProviderElement<MessageController,
        AsyncValue<MessageState>> with MessageControllerRef {
  _MessageControllerProviderElement(super.provider);

  @override
  int get userId => (origin as MessageControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
