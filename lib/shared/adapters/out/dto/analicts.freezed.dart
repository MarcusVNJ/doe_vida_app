// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analicts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StateCandidatePersonDto _$StateCandidatePersonDtoFromJson(
    Map<String, dynamic> json) {
  return _StateCandidatePersonDto.fromJson(json);
}

/// @nodoc
mixin _$StateCandidatePersonDto {
  String get estado => throw _privateConstructorUsedError;
  double get totalCandidatos => throw _privateConstructorUsedError;

  /// Serializes this StateCandidatePersonDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StateCandidatePersonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateCandidatePersonDtoCopyWith<StateCandidatePersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCandidatePersonDtoCopyWith<$Res> {
  factory $StateCandidatePersonDtoCopyWith(StateCandidatePersonDto value,
          $Res Function(StateCandidatePersonDto) then) =
      _$StateCandidatePersonDtoCopyWithImpl<$Res, StateCandidatePersonDto>;
  @useResult
  $Res call({String estado, double totalCandidatos});
}

/// @nodoc
class _$StateCandidatePersonDtoCopyWithImpl<$Res,
        $Val extends StateCandidatePersonDto>
    implements $StateCandidatePersonDtoCopyWith<$Res> {
  _$StateCandidatePersonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateCandidatePersonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estado = null,
    Object? totalCandidatos = null,
  }) {
    return _then(_value.copyWith(
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      totalCandidatos: null == totalCandidatos
          ? _value.totalCandidatos
          : totalCandidatos // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateCandidatePersonDtoImplCopyWith<$Res>
    implements $StateCandidatePersonDtoCopyWith<$Res> {
  factory _$$StateCandidatePersonDtoImplCopyWith(
          _$StateCandidatePersonDtoImpl value,
          $Res Function(_$StateCandidatePersonDtoImpl) then) =
      __$$StateCandidatePersonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String estado, double totalCandidatos});
}

/// @nodoc
class __$$StateCandidatePersonDtoImplCopyWithImpl<$Res>
    extends _$StateCandidatePersonDtoCopyWithImpl<$Res,
        _$StateCandidatePersonDtoImpl>
    implements _$$StateCandidatePersonDtoImplCopyWith<$Res> {
  __$$StateCandidatePersonDtoImplCopyWithImpl(
      _$StateCandidatePersonDtoImpl _value,
      $Res Function(_$StateCandidatePersonDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateCandidatePersonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estado = null,
    Object? totalCandidatos = null,
  }) {
    return _then(_$StateCandidatePersonDtoImpl(
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      totalCandidatos: null == totalCandidatos
          ? _value.totalCandidatos
          : totalCandidatos // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateCandidatePersonDtoImpl implements _StateCandidatePersonDto {
  const _$StateCandidatePersonDtoImpl(
      {required this.estado, required this.totalCandidatos});

  factory _$StateCandidatePersonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateCandidatePersonDtoImplFromJson(json);

  @override
  final String estado;
  @override
  final double totalCandidatos;

  @override
  String toString() {
    return 'StateCandidatePersonDto(estado: $estado, totalCandidatos: $totalCandidatos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCandidatePersonDtoImpl &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.totalCandidatos, totalCandidatos) ||
                other.totalCandidatos == totalCandidatos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, estado, totalCandidatos);

  /// Create a copy of StateCandidatePersonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateCandidatePersonDtoImplCopyWith<_$StateCandidatePersonDtoImpl>
      get copyWith => __$$StateCandidatePersonDtoImplCopyWithImpl<
          _$StateCandidatePersonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateCandidatePersonDtoImplToJson(
      this,
    );
  }
}

abstract class _StateCandidatePersonDto implements StateCandidatePersonDto {
  const factory _StateCandidatePersonDto(
      {required final String estado,
      required final double totalCandidatos}) = _$StateCandidatePersonDtoImpl;

  factory _StateCandidatePersonDto.fromJson(Map<String, dynamic> json) =
      _$StateCandidatePersonDtoImpl.fromJson;

  @override
  String get estado;
  @override
  double get totalCandidatos;

  /// Create a copy of StateCandidatePersonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateCandidatePersonDtoImplCopyWith<_$StateCandidatePersonDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PeopleAgeRangeDto _$PeopleAgeRangeDtoFromJson(Map<String, dynamic> json) {
  return _PeopleAgeRangeDto.fromJson(json);
}

/// @nodoc
mixin _$PeopleAgeRangeDto {
  double get imcAverage => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get maxAge => throw _privateConstructorUsedError;

  /// Serializes this PeopleAgeRangeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeopleAgeRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeopleAgeRangeDtoCopyWith<PeopleAgeRangeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleAgeRangeDtoCopyWith<$Res> {
  factory $PeopleAgeRangeDtoCopyWith(
          PeopleAgeRangeDto value, $Res Function(PeopleAgeRangeDto) then) =
      _$PeopleAgeRangeDtoCopyWithImpl<$Res, PeopleAgeRangeDto>;
  @useResult
  $Res call({double imcAverage, int minAge, int maxAge});
}

/// @nodoc
class _$PeopleAgeRangeDtoCopyWithImpl<$Res, $Val extends PeopleAgeRangeDto>
    implements $PeopleAgeRangeDtoCopyWith<$Res> {
  _$PeopleAgeRangeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeopleAgeRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imcAverage = null,
    Object? minAge = null,
    Object? maxAge = null,
  }) {
    return _then(_value.copyWith(
      imcAverage: null == imcAverage
          ? _value.imcAverage
          : imcAverage // ignore: cast_nullable_to_non_nullable
              as double,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleAgeRangeDtoImplCopyWith<$Res>
    implements $PeopleAgeRangeDtoCopyWith<$Res> {
  factory _$$PeopleAgeRangeDtoImplCopyWith(_$PeopleAgeRangeDtoImpl value,
          $Res Function(_$PeopleAgeRangeDtoImpl) then) =
      __$$PeopleAgeRangeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double imcAverage, int minAge, int maxAge});
}

/// @nodoc
class __$$PeopleAgeRangeDtoImplCopyWithImpl<$Res>
    extends _$PeopleAgeRangeDtoCopyWithImpl<$Res, _$PeopleAgeRangeDtoImpl>
    implements _$$PeopleAgeRangeDtoImplCopyWith<$Res> {
  __$$PeopleAgeRangeDtoImplCopyWithImpl(_$PeopleAgeRangeDtoImpl _value,
      $Res Function(_$PeopleAgeRangeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleAgeRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imcAverage = null,
    Object? minAge = null,
    Object? maxAge = null,
  }) {
    return _then(_$PeopleAgeRangeDtoImpl(
      imcAverage: null == imcAverage
          ? _value.imcAverage
          : imcAverage // ignore: cast_nullable_to_non_nullable
              as double,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleAgeRangeDtoImpl implements _PeopleAgeRangeDto {
  const _$PeopleAgeRangeDtoImpl(
      {required this.imcAverage, required this.minAge, required this.maxAge});

  factory _$PeopleAgeRangeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleAgeRangeDtoImplFromJson(json);

  @override
  final double imcAverage;
  @override
  final int minAge;
  @override
  final int maxAge;

  @override
  String toString() {
    return 'PeopleAgeRangeDto(imcAverage: $imcAverage, minAge: $minAge, maxAge: $maxAge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleAgeRangeDtoImpl &&
            (identical(other.imcAverage, imcAverage) ||
                other.imcAverage == imcAverage) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imcAverage, minAge, maxAge);

  /// Create a copy of PeopleAgeRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleAgeRangeDtoImplCopyWith<_$PeopleAgeRangeDtoImpl> get copyWith =>
      __$$PeopleAgeRangeDtoImplCopyWithImpl<_$PeopleAgeRangeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleAgeRangeDtoImplToJson(
      this,
    );
  }
}

abstract class _PeopleAgeRangeDto implements PeopleAgeRangeDto {
  const factory _PeopleAgeRangeDto(
      {required final double imcAverage,
      required final int minAge,
      required final int maxAge}) = _$PeopleAgeRangeDtoImpl;

  factory _PeopleAgeRangeDto.fromJson(Map<String, dynamic> json) =
      _$PeopleAgeRangeDtoImpl.fromJson;

  @override
  double get imcAverage;
  @override
  int get minAge;
  @override
  int get maxAge;

  /// Create a copy of PeopleAgeRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeopleAgeRangeDtoImplCopyWith<_$PeopleAgeRangeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PeopleObeseGenderDto _$PeopleObeseGenderDtoFromJson(Map<String, dynamic> json) {
  return _PeopleObeseGenderDto.fromJson(json);
}

/// @nodoc
mixin _$PeopleObeseGenderDto {
  double get percentualObesos => throw _privateConstructorUsedError;
  String get genero => throw _privateConstructorUsedError;

  /// Serializes this PeopleObeseGenderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeopleObeseGenderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeopleObeseGenderDtoCopyWith<PeopleObeseGenderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleObeseGenderDtoCopyWith<$Res> {
  factory $PeopleObeseGenderDtoCopyWith(PeopleObeseGenderDto value,
          $Res Function(PeopleObeseGenderDto) then) =
      _$PeopleObeseGenderDtoCopyWithImpl<$Res, PeopleObeseGenderDto>;
  @useResult
  $Res call({double percentualObesos, String genero});
}

/// @nodoc
class _$PeopleObeseGenderDtoCopyWithImpl<$Res,
        $Val extends PeopleObeseGenderDto>
    implements $PeopleObeseGenderDtoCopyWith<$Res> {
  _$PeopleObeseGenderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeopleObeseGenderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentualObesos = null,
    Object? genero = null,
  }) {
    return _then(_value.copyWith(
      percentualObesos: null == percentualObesos
          ? _value.percentualObesos
          : percentualObesos // ignore: cast_nullable_to_non_nullable
              as double,
      genero: null == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleObeseGenderDtoImplCopyWith<$Res>
    implements $PeopleObeseGenderDtoCopyWith<$Res> {
  factory _$$PeopleObeseGenderDtoImplCopyWith(_$PeopleObeseGenderDtoImpl value,
          $Res Function(_$PeopleObeseGenderDtoImpl) then) =
      __$$PeopleObeseGenderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double percentualObesos, String genero});
}

/// @nodoc
class __$$PeopleObeseGenderDtoImplCopyWithImpl<$Res>
    extends _$PeopleObeseGenderDtoCopyWithImpl<$Res, _$PeopleObeseGenderDtoImpl>
    implements _$$PeopleObeseGenderDtoImplCopyWith<$Res> {
  __$$PeopleObeseGenderDtoImplCopyWithImpl(_$PeopleObeseGenderDtoImpl _value,
      $Res Function(_$PeopleObeseGenderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleObeseGenderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentualObesos = null,
    Object? genero = null,
  }) {
    return _then(_$PeopleObeseGenderDtoImpl(
      percentualObesos: null == percentualObesos
          ? _value.percentualObesos
          : percentualObesos // ignore: cast_nullable_to_non_nullable
              as double,
      genero: null == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleObeseGenderDtoImpl implements _PeopleObeseGenderDto {
  const _$PeopleObeseGenderDtoImpl(
      {required this.percentualObesos, required this.genero});

  factory _$PeopleObeseGenderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleObeseGenderDtoImplFromJson(json);

  @override
  final double percentualObesos;
  @override
  final String genero;

  @override
  String toString() {
    return 'PeopleObeseGenderDto(percentualObesos: $percentualObesos, genero: $genero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleObeseGenderDtoImpl &&
            (identical(other.percentualObesos, percentualObesos) ||
                other.percentualObesos == percentualObesos) &&
            (identical(other.genero, genero) || other.genero == genero));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, percentualObesos, genero);

  /// Create a copy of PeopleObeseGenderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleObeseGenderDtoImplCopyWith<_$PeopleObeseGenderDtoImpl>
      get copyWith =>
          __$$PeopleObeseGenderDtoImplCopyWithImpl<_$PeopleObeseGenderDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleObeseGenderDtoImplToJson(
      this,
    );
  }
}

abstract class _PeopleObeseGenderDto implements PeopleObeseGenderDto {
  const factory _PeopleObeseGenderDto(
      {required final double percentualObesos,
      required final String genero}) = _$PeopleObeseGenderDtoImpl;

  factory _PeopleObeseGenderDto.fromJson(Map<String, dynamic> json) =
      _$PeopleObeseGenderDtoImpl.fromJson;

  @override
  double get percentualObesos;
  @override
  String get genero;

  /// Create a copy of PeopleObeseGenderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeopleObeseGenderDtoImplCopyWith<_$PeopleObeseGenderDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MediaAgeBloodTypeDto _$MediaAgeBloodTypeDtoFromJson(Map<String, dynamic> json) {
  return _MediaAgeBloodTypeDto.fromJson(json);
}

/// @nodoc
mixin _$MediaAgeBloodTypeDto {
  String get tipoSanguineo => throw _privateConstructorUsedError;
  double get mediaIdade => throw _privateConstructorUsedError;

  /// Serializes this MediaAgeBloodTypeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaAgeBloodTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaAgeBloodTypeDtoCopyWith<MediaAgeBloodTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaAgeBloodTypeDtoCopyWith<$Res> {
  factory $MediaAgeBloodTypeDtoCopyWith(MediaAgeBloodTypeDto value,
          $Res Function(MediaAgeBloodTypeDto) then) =
      _$MediaAgeBloodTypeDtoCopyWithImpl<$Res, MediaAgeBloodTypeDto>;
  @useResult
  $Res call({String tipoSanguineo, double mediaIdade});
}

/// @nodoc
class _$MediaAgeBloodTypeDtoCopyWithImpl<$Res,
        $Val extends MediaAgeBloodTypeDto>
    implements $MediaAgeBloodTypeDtoCopyWith<$Res> {
  _$MediaAgeBloodTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaAgeBloodTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoSanguineo = null,
    Object? mediaIdade = null,
  }) {
    return _then(_value.copyWith(
      tipoSanguineo: null == tipoSanguineo
          ? _value.tipoSanguineo
          : tipoSanguineo // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIdade: null == mediaIdade
          ? _value.mediaIdade
          : mediaIdade // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaAgeBloodTypeDtoImplCopyWith<$Res>
    implements $MediaAgeBloodTypeDtoCopyWith<$Res> {
  factory _$$MediaAgeBloodTypeDtoImplCopyWith(_$MediaAgeBloodTypeDtoImpl value,
          $Res Function(_$MediaAgeBloodTypeDtoImpl) then) =
      __$$MediaAgeBloodTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tipoSanguineo, double mediaIdade});
}

/// @nodoc
class __$$MediaAgeBloodTypeDtoImplCopyWithImpl<$Res>
    extends _$MediaAgeBloodTypeDtoCopyWithImpl<$Res, _$MediaAgeBloodTypeDtoImpl>
    implements _$$MediaAgeBloodTypeDtoImplCopyWith<$Res> {
  __$$MediaAgeBloodTypeDtoImplCopyWithImpl(_$MediaAgeBloodTypeDtoImpl _value,
      $Res Function(_$MediaAgeBloodTypeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaAgeBloodTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoSanguineo = null,
    Object? mediaIdade = null,
  }) {
    return _then(_$MediaAgeBloodTypeDtoImpl(
      tipoSanguineo: null == tipoSanguineo
          ? _value.tipoSanguineo
          : tipoSanguineo // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIdade: null == mediaIdade
          ? _value.mediaIdade
          : mediaIdade // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaAgeBloodTypeDtoImpl implements _MediaAgeBloodTypeDto {
  const _$MediaAgeBloodTypeDtoImpl(
      {required this.tipoSanguineo, required this.mediaIdade});

  factory _$MediaAgeBloodTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaAgeBloodTypeDtoImplFromJson(json);

  @override
  final String tipoSanguineo;
  @override
  final double mediaIdade;

  @override
  String toString() {
    return 'MediaAgeBloodTypeDto(tipoSanguineo: $tipoSanguineo, mediaIdade: $mediaIdade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaAgeBloodTypeDtoImpl &&
            (identical(other.tipoSanguineo, tipoSanguineo) ||
                other.tipoSanguineo == tipoSanguineo) &&
            (identical(other.mediaIdade, mediaIdade) ||
                other.mediaIdade == mediaIdade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tipoSanguineo, mediaIdade);

  /// Create a copy of MediaAgeBloodTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaAgeBloodTypeDtoImplCopyWith<_$MediaAgeBloodTypeDtoImpl>
      get copyWith =>
          __$$MediaAgeBloodTypeDtoImplCopyWithImpl<_$MediaAgeBloodTypeDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaAgeBloodTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _MediaAgeBloodTypeDto implements MediaAgeBloodTypeDto {
  const factory _MediaAgeBloodTypeDto(
      {required final String tipoSanguineo,
      required final double mediaIdade}) = _$MediaAgeBloodTypeDtoImpl;

  factory _MediaAgeBloodTypeDto.fromJson(Map<String, dynamic> json) =
      _$MediaAgeBloodTypeDtoImpl.fromJson;

  @override
  String get tipoSanguineo;
  @override
  double get mediaIdade;

  /// Create a copy of MediaAgeBloodTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaAgeBloodTypeDtoImplCopyWith<_$MediaAgeBloodTypeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DonorsByBloodTypeReceiverDto _$DonorsByBloodTypeReceiverDtoFromJson(
    Map<String, dynamic> json) {
  return _DonorsByBloodTypeReceiverDto.fromJson(json);
}

/// @nodoc
mixin _$DonorsByBloodTypeReceiverDto {
  int get quantidadeDoadores => throw _privateConstructorUsedError;
  String get tipoSanguineoReceptor => throw _privateConstructorUsedError;

  /// Serializes this DonorsByBloodTypeReceiverDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonorsByBloodTypeReceiverDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonorsByBloodTypeReceiverDtoCopyWith<DonorsByBloodTypeReceiverDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorsByBloodTypeReceiverDtoCopyWith<$Res> {
  factory $DonorsByBloodTypeReceiverDtoCopyWith(
          DonorsByBloodTypeReceiverDto value,
          $Res Function(DonorsByBloodTypeReceiverDto) then) =
      _$DonorsByBloodTypeReceiverDtoCopyWithImpl<$Res,
          DonorsByBloodTypeReceiverDto>;
  @useResult
  $Res call({int quantidadeDoadores, String tipoSanguineoReceptor});
}

/// @nodoc
class _$DonorsByBloodTypeReceiverDtoCopyWithImpl<$Res,
        $Val extends DonorsByBloodTypeReceiverDto>
    implements $DonorsByBloodTypeReceiverDtoCopyWith<$Res> {
  _$DonorsByBloodTypeReceiverDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonorsByBloodTypeReceiverDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantidadeDoadores = null,
    Object? tipoSanguineoReceptor = null,
  }) {
    return _then(_value.copyWith(
      quantidadeDoadores: null == quantidadeDoadores
          ? _value.quantidadeDoadores
          : quantidadeDoadores // ignore: cast_nullable_to_non_nullable
              as int,
      tipoSanguineoReceptor: null == tipoSanguineoReceptor
          ? _value.tipoSanguineoReceptor
          : tipoSanguineoReceptor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonorsByBloodTypeReceiverDtoImplCopyWith<$Res>
    implements $DonorsByBloodTypeReceiverDtoCopyWith<$Res> {
  factory _$$DonorsByBloodTypeReceiverDtoImplCopyWith(
          _$DonorsByBloodTypeReceiverDtoImpl value,
          $Res Function(_$DonorsByBloodTypeReceiverDtoImpl) then) =
      __$$DonorsByBloodTypeReceiverDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantidadeDoadores, String tipoSanguineoReceptor});
}

/// @nodoc
class __$$DonorsByBloodTypeReceiverDtoImplCopyWithImpl<$Res>
    extends _$DonorsByBloodTypeReceiverDtoCopyWithImpl<$Res,
        _$DonorsByBloodTypeReceiverDtoImpl>
    implements _$$DonorsByBloodTypeReceiverDtoImplCopyWith<$Res> {
  __$$DonorsByBloodTypeReceiverDtoImplCopyWithImpl(
      _$DonorsByBloodTypeReceiverDtoImpl _value,
      $Res Function(_$DonorsByBloodTypeReceiverDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonorsByBloodTypeReceiverDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantidadeDoadores = null,
    Object? tipoSanguineoReceptor = null,
  }) {
    return _then(_$DonorsByBloodTypeReceiverDtoImpl(
      quantidadeDoadores: null == quantidadeDoadores
          ? _value.quantidadeDoadores
          : quantidadeDoadores // ignore: cast_nullable_to_non_nullable
              as int,
      tipoSanguineoReceptor: null == tipoSanguineoReceptor
          ? _value.tipoSanguineoReceptor
          : tipoSanguineoReceptor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorsByBloodTypeReceiverDtoImpl
    implements _DonorsByBloodTypeReceiverDto {
  const _$DonorsByBloodTypeReceiverDtoImpl(
      {required this.quantidadeDoadores, required this.tipoSanguineoReceptor});

  factory _$DonorsByBloodTypeReceiverDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DonorsByBloodTypeReceiverDtoImplFromJson(json);

  @override
  final int quantidadeDoadores;
  @override
  final String tipoSanguineoReceptor;

  @override
  String toString() {
    return 'DonorsByBloodTypeReceiverDto(quantidadeDoadores: $quantidadeDoadores, tipoSanguineoReceptor: $tipoSanguineoReceptor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorsByBloodTypeReceiverDtoImpl &&
            (identical(other.quantidadeDoadores, quantidadeDoadores) ||
                other.quantidadeDoadores == quantidadeDoadores) &&
            (identical(other.tipoSanguineoReceptor, tipoSanguineoReceptor) ||
                other.tipoSanguineoReceptor == tipoSanguineoReceptor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quantidadeDoadores, tipoSanguineoReceptor);

  /// Create a copy of DonorsByBloodTypeReceiverDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorsByBloodTypeReceiverDtoImplCopyWith<
          _$DonorsByBloodTypeReceiverDtoImpl>
      get copyWith => __$$DonorsByBloodTypeReceiverDtoImplCopyWithImpl<
          _$DonorsByBloodTypeReceiverDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorsByBloodTypeReceiverDtoImplToJson(
      this,
    );
  }
}

abstract class _DonorsByBloodTypeReceiverDto
    implements DonorsByBloodTypeReceiverDto {
  const factory _DonorsByBloodTypeReceiverDto(
          {required final int quantidadeDoadores,
          required final String tipoSanguineoReceptor}) =
      _$DonorsByBloodTypeReceiverDtoImpl;

  factory _DonorsByBloodTypeReceiverDto.fromJson(Map<String, dynamic> json) =
      _$DonorsByBloodTypeReceiverDtoImpl.fromJson;

  @override
  int get quantidadeDoadores;
  @override
  String get tipoSanguineoReceptor;

  /// Create a copy of DonorsByBloodTypeReceiverDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonorsByBloodTypeReceiverDtoImplCopyWith<
          _$DonorsByBloodTypeReceiverDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
