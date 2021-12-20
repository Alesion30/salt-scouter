// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scouter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScouterStateTearOff {
  const _$ScouterStateTearOff();

  _ScouterState call({CameraController? controller, bool isPause = true}) {
    return _ScouterState(
      controller: controller,
      isPause: isPause,
    );
  }
}

/// @nodoc
const $ScouterState = _$ScouterStateTearOff();

/// @nodoc
mixin _$ScouterState {
  CameraController? get controller => throw _privateConstructorUsedError;
  bool get isPause => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScouterStateCopyWith<ScouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScouterStateCopyWith<$Res> {
  factory $ScouterStateCopyWith(
          ScouterState value, $Res Function(ScouterState) then) =
      _$ScouterStateCopyWithImpl<$Res>;
  $Res call({CameraController? controller, bool isPause});
}

/// @nodoc
class _$ScouterStateCopyWithImpl<$Res> implements $ScouterStateCopyWith<$Res> {
  _$ScouterStateCopyWithImpl(this._value, this._then);

  final ScouterState _value;
  // ignore: unused_field
  final $Res Function(ScouterState) _then;

  @override
  $Res call({
    Object? controller = freezed,
    Object? isPause = freezed,
  }) {
    return _then(_value.copyWith(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      isPause: isPause == freezed
          ? _value.isPause
          : isPause // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScouterStateCopyWith<$Res>
    implements $ScouterStateCopyWith<$Res> {
  factory _$ScouterStateCopyWith(
          _ScouterState value, $Res Function(_ScouterState) then) =
      __$ScouterStateCopyWithImpl<$Res>;
  @override
  $Res call({CameraController? controller, bool isPause});
}

/// @nodoc
class __$ScouterStateCopyWithImpl<$Res> extends _$ScouterStateCopyWithImpl<$Res>
    implements _$ScouterStateCopyWith<$Res> {
  __$ScouterStateCopyWithImpl(
      _ScouterState _value, $Res Function(_ScouterState) _then)
      : super(_value, (v) => _then(v as _ScouterState));

  @override
  _ScouterState get _value => super._value as _ScouterState;

  @override
  $Res call({
    Object? controller = freezed,
    Object? isPause = freezed,
  }) {
    return _then(_ScouterState(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      isPause: isPause == freezed
          ? _value.isPause
          : isPause // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScouterState implements _ScouterState {
  const _$_ScouterState({this.controller, this.isPause = true});

  @override
  final CameraController? controller;
  @JsonKey()
  @override
  final bool isPause;

  @override
  String toString() {
    return 'ScouterState(controller: $controller, isPause: $isPause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScouterState &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            const DeepCollectionEquality().equals(other.isPause, isPause));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controller),
      const DeepCollectionEquality().hash(isPause));

  @JsonKey(ignore: true)
  @override
  _$ScouterStateCopyWith<_ScouterState> get copyWith =>
      __$ScouterStateCopyWithImpl<_ScouterState>(this, _$identity);
}

abstract class _ScouterState implements ScouterState {
  const factory _ScouterState({CameraController? controller, bool isPause}) =
      _$_ScouterState;

  @override
  CameraController? get controller;
  @override
  bool get isPause;
  @override
  @JsonKey(ignore: true)
  _$ScouterStateCopyWith<_ScouterState> get copyWith =>
      throw _privateConstructorUsedError;
}
