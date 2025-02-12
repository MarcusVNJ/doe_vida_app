import 'package:freezed_annotation/freezed_annotation.dart';
part 'analicts.freezed.dart';
part 'analicts.g.dart';

sealed class AnalictsResponse {}

@freezed
class StateCandidatePersonDto extends AnalictsResponse
    with _$StateCandidatePersonDto {
  const factory StateCandidatePersonDto({
    required String estado,
    required double totalCandidatos
  }) = _StateCandidatePersonDto;

  factory StateCandidatePersonDto.fromJson(Map<String, Object?> json)
  => _$StateCandidatePersonDtoFromJson(json);
}

@freezed
class PeopleAgeRangeDto extends AnalictsResponse
    with _$PeopleAgeRangeDto {
  const factory PeopleAgeRangeDto({
    required double imcAverage,
    required int minAge,
    required int maxAge,
  }) = _PeopleAgeRangeDto;

  factory PeopleAgeRangeDto.fromJson(Map<String, Object?> json)
  => _$PeopleAgeRangeDtoFromJson(json);
}

@freezed
class PeopleObeseGenderDto extends AnalictsResponse
    with _$PeopleObeseGenderDto {
  const factory PeopleObeseGenderDto({
    required double percentualObesos,
    required String genero
  }) = _PeopleObeseGenderDto;

  factory PeopleObeseGenderDto.fromJson(Map<String, Object?> json)
  => _$PeopleObeseGenderDtoFromJson(json);
}

@freezed
class MediaAgeBloodTypeDto extends AnalictsResponse
    with _$MediaAgeBloodTypeDto {
  const factory MediaAgeBloodTypeDto({
    required String tipoSanguineo,
    required double mediaIdade
  }) = _MediaAgeBloodTypeDto;

  factory MediaAgeBloodTypeDto.fromJson(Map<String, Object?> json)
  => _$MediaAgeBloodTypeDtoFromJson(json);
}

@freezed
class DonorsByBloodTypeReceiverDto extends AnalictsResponse
    with _$DonorsByBloodTypeReceiverDto {
  const factory DonorsByBloodTypeReceiverDto({
    required int quantidadeDoadores,
    required String tipoSanguineoReceptor
  }) = _DonorsByBloodTypeReceiverDto;

  factory DonorsByBloodTypeReceiverDto.fromJson(Map<String, Object?> json)
  => _$DonorsByBloodTypeReceiverDtoFromJson(json);
}