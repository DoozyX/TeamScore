// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VoiceModel {
  String get name => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoiceModelCopyWith<VoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceModelCopyWith<$Res> {
  factory $VoiceModelCopyWith(
          VoiceModel value, $Res Function(VoiceModel) then) =
      _$VoiceModelCopyWithImpl<$Res, VoiceModel>;
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class _$VoiceModelCopyWithImpl<$Res, $Val extends VoiceModel>
    implements $VoiceModelCopyWith<$Res> {
  _$VoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoiceModelCopyWith<$Res>
    implements $VoiceModelCopyWith<$Res> {
  factory _$$_VoiceModelCopyWith(
          _$_VoiceModel value, $Res Function(_$_VoiceModel) then) =
      __$$_VoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class __$$_VoiceModelCopyWithImpl<$Res>
    extends _$VoiceModelCopyWithImpl<$Res, _$_VoiceModel>
    implements _$$_VoiceModelCopyWith<$Res> {
  __$$_VoiceModelCopyWithImpl(
      _$_VoiceModel _value, $Res Function(_$_VoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
  }) {
    return _then(_$_VoiceModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VoiceModel implements _VoiceModel {
  const _$_VoiceModel({required this.name, required this.locale});

  @override
  final String name;
  @override
  final String locale;

  @override
  String toString() {
    return 'VoiceModel(name: $name, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoiceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoiceModelCopyWith<_$_VoiceModel> get copyWith =>
      __$$_VoiceModelCopyWithImpl<_$_VoiceModel>(this, _$identity);
}

abstract class _VoiceModel implements VoiceModel {
  const factory _VoiceModel(
      {required final String name,
      required final String locale}) = _$_VoiceModel;

  @override
  String get name;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$_VoiceModelCopyWith<_$_VoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoiceSettingsModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(List<VoiceModel> voices) enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(List<VoiceModel> voices)? enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(List<VoiceModel> voices)? enabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoiceSettingsDisabled value) disabled,
    required TResult Function(VoiceSettingsEnabled value) enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoiceSettingsDisabled value)? disabled,
    TResult? Function(VoiceSettingsEnabled value)? enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoiceSettingsDisabled value)? disabled,
    TResult Function(VoiceSettingsEnabled value)? enabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceSettingsModelCopyWith<$Res> {
  factory $VoiceSettingsModelCopyWith(
          VoiceSettingsModel value, $Res Function(VoiceSettingsModel) then) =
      _$VoiceSettingsModelCopyWithImpl<$Res, VoiceSettingsModel>;
}

/// @nodoc
class _$VoiceSettingsModelCopyWithImpl<$Res, $Val extends VoiceSettingsModel>
    implements $VoiceSettingsModelCopyWith<$Res> {
  _$VoiceSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VoiceSettingsDisabledCopyWith<$Res> {
  factory _$$VoiceSettingsDisabledCopyWith(_$VoiceSettingsDisabled value,
          $Res Function(_$VoiceSettingsDisabled) then) =
      __$$VoiceSettingsDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoiceSettingsDisabledCopyWithImpl<$Res>
    extends _$VoiceSettingsModelCopyWithImpl<$Res, _$VoiceSettingsDisabled>
    implements _$$VoiceSettingsDisabledCopyWith<$Res> {
  __$$VoiceSettingsDisabledCopyWithImpl(_$VoiceSettingsDisabled _value,
      $Res Function(_$VoiceSettingsDisabled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoiceSettingsDisabled implements VoiceSettingsDisabled {
  const _$VoiceSettingsDisabled();

  @override
  String toString() {
    return 'VoiceSettingsModel.disabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoiceSettingsDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(List<VoiceModel> voices) enabled,
  }) {
    return disabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(List<VoiceModel> voices)? enabled,
  }) {
    return disabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(List<VoiceModel> voices)? enabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoiceSettingsDisabled value) disabled,
    required TResult Function(VoiceSettingsEnabled value) enabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoiceSettingsDisabled value)? disabled,
    TResult? Function(VoiceSettingsEnabled value)? enabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoiceSettingsDisabled value)? disabled,
    TResult Function(VoiceSettingsEnabled value)? enabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class VoiceSettingsDisabled implements VoiceSettingsModel {
  const factory VoiceSettingsDisabled() = _$VoiceSettingsDisabled;
}

/// @nodoc
abstract class _$$VoiceSettingsEnabledCopyWith<$Res> {
  factory _$$VoiceSettingsEnabledCopyWith(_$VoiceSettingsEnabled value,
          $Res Function(_$VoiceSettingsEnabled) then) =
      __$$VoiceSettingsEnabledCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VoiceModel> voices});
}

/// @nodoc
class __$$VoiceSettingsEnabledCopyWithImpl<$Res>
    extends _$VoiceSettingsModelCopyWithImpl<$Res, _$VoiceSettingsEnabled>
    implements _$$VoiceSettingsEnabledCopyWith<$Res> {
  __$$VoiceSettingsEnabledCopyWithImpl(_$VoiceSettingsEnabled _value,
      $Res Function(_$VoiceSettingsEnabled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voices = null,
  }) {
    return _then(_$VoiceSettingsEnabled(
      null == voices
          ? _value._voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<VoiceModel>,
    ));
  }
}

/// @nodoc

class _$VoiceSettingsEnabled implements VoiceSettingsEnabled {
  const _$VoiceSettingsEnabled(final List<VoiceModel> voices)
      : _voices = voices;

  final List<VoiceModel> _voices;
  @override
  List<VoiceModel> get voices {
    if (_voices is EqualUnmodifiableListView) return _voices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voices);
  }

  @override
  String toString() {
    return 'VoiceSettingsModel.enabled(voices: $voices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceSettingsEnabled &&
            const DeepCollectionEquality().equals(other._voices, _voices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_voices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceSettingsEnabledCopyWith<_$VoiceSettingsEnabled> get copyWith =>
      __$$VoiceSettingsEnabledCopyWithImpl<_$VoiceSettingsEnabled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(List<VoiceModel> voices) enabled,
  }) {
    return enabled(voices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(List<VoiceModel> voices)? enabled,
  }) {
    return enabled?.call(voices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(List<VoiceModel> voices)? enabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(voices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoiceSettingsDisabled value) disabled,
    required TResult Function(VoiceSettingsEnabled value) enabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoiceSettingsDisabled value)? disabled,
    TResult? Function(VoiceSettingsEnabled value)? enabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoiceSettingsDisabled value)? disabled,
    TResult Function(VoiceSettingsEnabled value)? enabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class VoiceSettingsEnabled implements VoiceSettingsModel {
  const factory VoiceSettingsEnabled(final List<VoiceModel> voices) =
      _$VoiceSettingsEnabled;

  List<VoiceModel> get voices;
  @JsonKey(ignore: true)
  _$$VoiceSettingsEnabledCopyWith<_$VoiceSettingsEnabled> get copyWith =>
      throw _privateConstructorUsedError;
}
