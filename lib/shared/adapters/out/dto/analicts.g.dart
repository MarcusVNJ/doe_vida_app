// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analicts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StateCandidatePersonDtoImpl _$$StateCandidatePersonDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StateCandidatePersonDtoImpl(
      estado: json['estado'] as String,
      totalCandidatos: (json['totalCandidatos'] as num).toDouble(),
    );

Map<String, dynamic> _$$StateCandidatePersonDtoImplToJson(
        _$StateCandidatePersonDtoImpl instance) =>
    <String, dynamic>{
      'estado': instance.estado,
      'totalCandidatos': instance.totalCandidatos,
    };

_$PeopleAgeRangeDtoImpl _$$PeopleAgeRangeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PeopleAgeRangeDtoImpl(
      imcAverage: (json['imcAverage'] as num).toDouble(),
      minAge: (json['minAge'] as num).toInt(),
      maxAge: (json['maxAge'] as num).toInt(),
    );

Map<String, dynamic> _$$PeopleAgeRangeDtoImplToJson(
        _$PeopleAgeRangeDtoImpl instance) =>
    <String, dynamic>{
      'imcAverage': instance.imcAverage,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
    };

_$PeopleObeseGenderDtoImpl _$$PeopleObeseGenderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PeopleObeseGenderDtoImpl(
      percentualObesos: (json['percentualObesos'] as num).toDouble(),
      genero: json['genero'] as String,
    );

Map<String, dynamic> _$$PeopleObeseGenderDtoImplToJson(
        _$PeopleObeseGenderDtoImpl instance) =>
    <String, dynamic>{
      'percentualObesos': instance.percentualObesos,
      'genero': instance.genero,
    };

_$MediaAgeBloodTypeDtoImpl _$$MediaAgeBloodTypeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaAgeBloodTypeDtoImpl(
      tipoSanguineo: json['tipoSanguineo'] as String,
      mediaIdade: (json['mediaIdade'] as num).toDouble(),
    );

Map<String, dynamic> _$$MediaAgeBloodTypeDtoImplToJson(
        _$MediaAgeBloodTypeDtoImpl instance) =>
    <String, dynamic>{
      'tipoSanguineo': instance.tipoSanguineo,
      'mediaIdade': instance.mediaIdade,
    };

_$DonorsByBloodTypeReceiverDtoImpl _$$DonorsByBloodTypeReceiverDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DonorsByBloodTypeReceiverDtoImpl(
      quantidadeDoadores: (json['quantidadeDoadores'] as num).toInt(),
      tipoSanguineoReceptor: json['tipoSanguineoReceptor'] as String,
    );

Map<String, dynamic> _$$DonorsByBloodTypeReceiverDtoImplToJson(
        _$DonorsByBloodTypeReceiverDtoImpl instance) =>
    <String, dynamic>{
      'quantidadeDoadores': instance.quantidadeDoadores,
      'tipoSanguineoReceptor': instance.tipoSanguineoReceptor,
    };
