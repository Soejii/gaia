// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scheduleControllerHash() =>
    r'18f081f6632f0eeeeb858a1fee744a4a6e6ad6bc';

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

abstract class _$ScheduleController
    extends BuildlessAutoDisposeAsyncNotifier<List<ScheduleEntity>> {
  late final DayOfWeek dayOfWeek;

  FutureOr<List<ScheduleEntity>> build(
    DayOfWeek dayOfWeek,
  );
}

/// See also [ScheduleController].
@ProviderFor(ScheduleController)
const scheduleControllerProvider = ScheduleControllerFamily();

/// See also [ScheduleController].
class ScheduleControllerFamily
    extends Family<AsyncValue<List<ScheduleEntity>>> {
  /// See also [ScheduleController].
  const ScheduleControllerFamily();

  /// See also [ScheduleController].
  ScheduleControllerProvider call(
    DayOfWeek dayOfWeek,
  ) {
    return ScheduleControllerProvider(
      dayOfWeek,
    );
  }

  @override
  ScheduleControllerProvider getProviderOverride(
    covariant ScheduleControllerProvider provider,
  ) {
    return call(
      provider.dayOfWeek,
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
  String? get name => r'scheduleControllerProvider';
}

/// See also [ScheduleController].
class ScheduleControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ScheduleController, List<ScheduleEntity>> {
  /// See also [ScheduleController].
  ScheduleControllerProvider(
    DayOfWeek dayOfWeek,
  ) : this._internal(
          () => ScheduleController()..dayOfWeek = dayOfWeek,
          from: scheduleControllerProvider,
          name: r'scheduleControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scheduleControllerHash,
          dependencies: ScheduleControllerFamily._dependencies,
          allTransitiveDependencies:
              ScheduleControllerFamily._allTransitiveDependencies,
          dayOfWeek: dayOfWeek,
        );

  ScheduleControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dayOfWeek,
  }) : super.internal();

  final DayOfWeek dayOfWeek;

  @override
  FutureOr<List<ScheduleEntity>> runNotifierBuild(
    covariant ScheduleController notifier,
  ) {
    return notifier.build(
      dayOfWeek,
    );
  }

  @override
  Override overrideWith(ScheduleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ScheduleControllerProvider._internal(
        () => create()..dayOfWeek = dayOfWeek,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dayOfWeek: dayOfWeek,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ScheduleController,
      List<ScheduleEntity>> createElement() {
    return _ScheduleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScheduleControllerProvider && other.dayOfWeek == dayOfWeek;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dayOfWeek.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ScheduleControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ScheduleEntity>> {
  /// The parameter `dayOfWeek` of this provider.
  DayOfWeek get dayOfWeek;
}

class _ScheduleControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ScheduleController,
        List<ScheduleEntity>> with ScheduleControllerRef {
  _ScheduleControllerProviderElement(super.provider);

  @override
  DayOfWeek get dayOfWeek => (origin as ScheduleControllerProvider).dayOfWeek;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
