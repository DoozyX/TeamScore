// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(String host) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(String host)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(String host)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionModelDisconnected value) disconnected,
    required TResult Function(ConnectionModelConnected value) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionModelDisconnected value)? disconnected,
    TResult? Function(ConnectionModelConnected value)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionModelDisconnected value)? disconnected,
    TResult Function(ConnectionModelConnected value)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionModelCopyWith<$Res> {
  factory $ConnectionModelCopyWith(
          ConnectionModel value, $Res Function(ConnectionModel) then) =
      _$ConnectionModelCopyWithImpl<$Res, ConnectionModel>;
}

/// @nodoc
class _$ConnectionModelCopyWithImpl<$Res, $Val extends ConnectionModel>
    implements $ConnectionModelCopyWith<$Res> {
  _$ConnectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectionModelDisconnectedCopyWith<$Res> {
  factory _$$ConnectionModelDisconnectedCopyWith(
          _$ConnectionModelDisconnected value,
          $Res Function(_$ConnectionModelDisconnected) then) =
      __$$ConnectionModelDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionModelDisconnectedCopyWithImpl<$Res>
    extends _$ConnectionModelCopyWithImpl<$Res, _$ConnectionModelDisconnected>
    implements _$$ConnectionModelDisconnectedCopyWith<$Res> {
  __$$ConnectionModelDisconnectedCopyWithImpl(
      _$ConnectionModelDisconnected _value,
      $Res Function(_$ConnectionModelDisconnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionModelDisconnected implements ConnectionModelDisconnected {
  const _$ConnectionModelDisconnected();

  @override
  String toString() {
    return 'ConnectionModel.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionModelDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(String host) connected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(String host)? connected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(String host)? connected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionModelDisconnected value) disconnected,
    required TResult Function(ConnectionModelConnected value) connected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionModelDisconnected value)? disconnected,
    TResult? Function(ConnectionModelConnected value)? connected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionModelDisconnected value)? disconnected,
    TResult Function(ConnectionModelConnected value)? connected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class ConnectionModelDisconnected implements ConnectionModel {
  const factory ConnectionModelDisconnected() = _$ConnectionModelDisconnected;
}

/// @nodoc
abstract class _$$ConnectionModelConnectedCopyWith<$Res> {
  factory _$$ConnectionModelConnectedCopyWith(_$ConnectionModelConnected value,
          $Res Function(_$ConnectionModelConnected) then) =
      __$$ConnectionModelConnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String host});
}

/// @nodoc
class __$$ConnectionModelConnectedCopyWithImpl<$Res>
    extends _$ConnectionModelCopyWithImpl<$Res, _$ConnectionModelConnected>
    implements _$$ConnectionModelConnectedCopyWith<$Res> {
  __$$ConnectionModelConnectedCopyWithImpl(_$ConnectionModelConnected _value,
      $Res Function(_$ConnectionModelConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
  }) {
    return _then(_$ConnectionModelConnected(
      null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionModelConnected implements ConnectionModelConnected {
  const _$ConnectionModelConnected(this.host);

  @override
  final String host;

  @override
  String toString() {
    return 'ConnectionModel.connected(host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionModelConnected &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionModelConnectedCopyWith<_$ConnectionModelConnected>
      get copyWith =>
          __$$ConnectionModelConnectedCopyWithImpl<_$ConnectionModelConnected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(String host) connected,
  }) {
    return connected(host);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(String host)? connected,
  }) {
    return connected?.call(host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(String host)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionModelDisconnected value) disconnected,
    required TResult Function(ConnectionModelConnected value) connected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionModelDisconnected value)? disconnected,
    TResult? Function(ConnectionModelConnected value)? connected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionModelDisconnected value)? disconnected,
    TResult Function(ConnectionModelConnected value)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectionModelConnected implements ConnectionModel {
  const factory ConnectionModelConnected(final String host) =
      _$ConnectionModelConnected;

  String get host;
  @JsonKey(ignore: true)
  _$$ConnectionModelConnectedCopyWith<_$ConnectionModelConnected>
      get copyWith => throw _privateConstructorUsedError;
}
