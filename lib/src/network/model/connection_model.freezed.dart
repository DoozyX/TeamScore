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
  String? get host => throw _privateConstructorUsedError;
  bool get connected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionModelCopyWith<ConnectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionModelCopyWith<$Res> {
  factory $ConnectionModelCopyWith(
          ConnectionModel value, $Res Function(ConnectionModel) then) =
      _$ConnectionModelCopyWithImpl<$Res, ConnectionModel>;
  @useResult
  $Res call({String? host, bool connected});
}

/// @nodoc
class _$ConnectionModelCopyWithImpl<$Res, $Val extends ConnectionModel>
    implements $ConnectionModelCopyWith<$Res> {
  _$ConnectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? connected = null,
  }) {
    return _then(_value.copyWith(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionModelCopyWith<$Res>
    implements $ConnectionModelCopyWith<$Res> {
  factory _$$_ConnectionModelCopyWith(
          _$_ConnectionModel value, $Res Function(_$_ConnectionModel) then) =
      __$$_ConnectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? host, bool connected});
}

/// @nodoc
class __$$_ConnectionModelCopyWithImpl<$Res>
    extends _$ConnectionModelCopyWithImpl<$Res, _$_ConnectionModel>
    implements _$$_ConnectionModelCopyWith<$Res> {
  __$$_ConnectionModelCopyWithImpl(
      _$_ConnectionModel _value, $Res Function(_$_ConnectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? connected = null,
  }) {
    return _then(_$_ConnectionModel(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectionModel implements _ConnectionModel {
  const _$_ConnectionModel({required this.host, required this.connected});

  @override
  final String? host;
  @override
  final bool connected;

  @override
  String toString() {
    return 'ConnectionModel(host: $host, connected: $connected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionModel &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.connected, connected) ||
                other.connected == connected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, connected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionModelCopyWith<_$_ConnectionModel> get copyWith =>
      __$$_ConnectionModelCopyWithImpl<_$_ConnectionModel>(this, _$identity);
}

abstract class _ConnectionModel implements ConnectionModel {
  const factory _ConnectionModel(
      {required final String? host,
      required final bool connected}) = _$_ConnectionModel;

  @override
  String? get host;
  @override
  bool get connected;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionModelCopyWith<_$_ConnectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
