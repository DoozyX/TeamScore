// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreModel {
  int get team1Score => throw _privateConstructorUsedError;
  int get team2Score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreModelCopyWith<ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreModelCopyWith<$Res> {
  factory $ScoreModelCopyWith(
          ScoreModel value, $Res Function(ScoreModel) then) =
      _$ScoreModelCopyWithImpl<$Res, ScoreModel>;
  @useResult
  $Res call({int team1Score, int team2Score});
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res, $Val extends ScoreModel>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team1Score = null,
    Object? team2Score = null,
  }) {
    return _then(_value.copyWith(
      team1Score: null == team1Score
          ? _value.team1Score
          : team1Score // ignore: cast_nullable_to_non_nullable
              as int,
      team2Score: null == team2Score
          ? _value.team2Score
          : team2Score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreModelCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$_ScoreModelCopyWith(
          _$_ScoreModel value, $Res Function(_$_ScoreModel) then) =
      __$$_ScoreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int team1Score, int team2Score});
}

/// @nodoc
class __$$_ScoreModelCopyWithImpl<$Res>
    extends _$ScoreModelCopyWithImpl<$Res, _$_ScoreModel>
    implements _$$_ScoreModelCopyWith<$Res> {
  __$$_ScoreModelCopyWithImpl(
      _$_ScoreModel _value, $Res Function(_$_ScoreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team1Score = null,
    Object? team2Score = null,
  }) {
    return _then(_$_ScoreModel(
      team1Score: null == team1Score
          ? _value.team1Score
          : team1Score // ignore: cast_nullable_to_non_nullable
              as int,
      team2Score: null == team2Score
          ? _value.team2Score
          : team2Score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreModel implements _ScoreModel {
  const _$_ScoreModel({required this.team1Score, required this.team2Score});

  @override
  final int team1Score;
  @override
  final int team2Score;

  @override
  String toString() {
    return 'ScoreModel(team1Score: $team1Score, team2Score: $team2Score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScoreModel &&
            (identical(other.team1Score, team1Score) ||
                other.team1Score == team1Score) &&
            (identical(other.team2Score, team2Score) ||
                other.team2Score == team2Score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team1Score, team2Score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreModelCopyWith<_$_ScoreModel> get copyWith =>
      __$$_ScoreModelCopyWithImpl<_$_ScoreModel>(this, _$identity);
}

abstract class _ScoreModel implements ScoreModel {
  const factory _ScoreModel(
      {required final int team1Score,
      required final int team2Score}) = _$_ScoreModel;

  @override
  int get team1Score;
  @override
  int get team2Score;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreModelCopyWith<_$_ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
