// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      name: json['name'] as String,
      email: json['email'] as String,
      contactNumber: json['contactNumber'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      marriageStatus:
          $enumDecode(_$MarriageStatusEnumMap, json['marriageStatus']),
      bankAccountDetails: BankAccountDetails.fromJson(
          json['bankAccountDetails'] as Map<String, dynamic>),
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'role': _$RoleEnumMap[instance.role]!,
      'name': instance.name,
      'email': instance.email,
      'contactNumber': instance.contactNumber,
      'gender': _$GenderEnumMap[instance.gender]!,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'marriageStatus': _$MarriageStatusEnumMap[instance.marriageStatus]!,
      'bankAccountDetails': instance.bankAccountDetails,
      'profilePicture': instance.profilePicture,
    };

const _$RoleEnumMap = {
  Role.unassigned: 'unassigned',
  Role.victim: 'victim',
  Role.donor: 'donor',
  Role.consultant: 'consultant',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$MarriageStatusEnumMap = {
  MarriageStatus.single: 'single',
  MarriageStatus.married: 'married',
  MarriageStatus.divorced: 'divorced',
  MarriageStatus.widowed: 'widowed',
  MarriageStatus.separated: 'separated',
  MarriageStatus.preferNotToSay: 'prefer_not_to_say',
};
