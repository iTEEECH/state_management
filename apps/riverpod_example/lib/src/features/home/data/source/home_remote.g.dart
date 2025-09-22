// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_remote.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(homeRemote)
const homeRemoteProvider = HomeRemoteProvider._();

final class HomeRemoteProvider extends $FunctionalProvider<HomeRemote, HomeRemote, HomeRemote>
    with $Provider<HomeRemote> {
  const HomeRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeRemoteHash();

  @$internal
  @override
  $ProviderElement<HomeRemote> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  HomeRemote create(Ref ref) {
    return homeRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeRemote value) {
    return $ProviderOverride(origin: this, providerOverride: $SyncValueProvider<HomeRemote>(value));
  }
}

String _$homeRemoteHash() => r'7f3410e8e8710578511b621b5fd9fcb3e920628b';
