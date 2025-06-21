// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  MarriageStatus get marriageStatus => throw _privateConstructorUsedError;
  BankAccountDetails get bankAccountDetails =>
      throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      String userId,
      Role role,
      String name,
      String email,
      String contactNumber,
      Gender gender,
      DateTime dateOfBirth,
      MarriageStatus marriageStatus,
      BankAccountDetails bankAccountDetails,
      String? profilePicture});

  $BankAccountDetailsCopyWith<$Res> get bankAccountDetails;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? role = null,
    Object? name = null,
    Object? email = null,
    Object? contactNumber = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? marriageStatus = null,
    Object? bankAccountDetails = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      marriageStatus: null == marriageStatus
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as MarriageStatus,
      bankAccountDetails: null == bankAccountDetails
          ? _value.bankAccountDetails
          : bankAccountDetails // ignore: cast_nullable_to_non_nullable
              as BankAccountDetails,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankAccountDetailsCopyWith<$Res> get bankAccountDetails {
    return $BankAccountDetailsCopyWith<$Res>(_value.bankAccountDetails,
        (value) {
      return _then(_value.copyWith(bankAccountDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Role role,
      String name,
      String email,
      String contactNumber,
      Gender gender,
      DateTime dateOfBirth,
      MarriageStatus marriageStatus,
      BankAccountDetails bankAccountDetails,
      String? profilePicture});

  @override
  $BankAccountDetailsCopyWith<$Res> get bankAccountDetails;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? role = null,
    Object? name = null,
    Object? email = null,
    Object? contactNumber = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? marriageStatus = null,
    Object? bankAccountDetails = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      marriageStatus: null == marriageStatus
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as MarriageStatus,
      bankAccountDetails: null == bankAccountDetails
          ? _value.bankAccountDetails
          : bankAccountDetails // ignore: cast_nullable_to_non_nullable
              as BankAccountDetails,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.userId,
      required this.role,
      required this.name,
      required this.email,
      required this.contactNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.marriageStatus,
      required this.bankAccountDetails,
      required this.profilePicture});

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final Role role;
  @override
  final String name;
  @override
  final String email;
  @override
  final String contactNumber;
  @override
  final Gender gender;
  @override
  final DateTime dateOfBirth;
  @override
  final MarriageStatus marriageStatus;
  @override
  final BankAccountDetails bankAccountDetails;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'UserProfile(id: $id, userId: $userId, role: $role, name: $name, email: $email, contactNumber: $contactNumber, gender: $gender, dateOfBirth: $dateOfBirth, marriageStatus: $marriageStatus, bankAccountDetails: $bankAccountDetails, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.marriageStatus, marriageStatus) ||
                other.marriageStatus == marriageStatus) &&
            (identical(other.bankAccountDetails, bankAccountDetails) ||
                other.bankAccountDetails == bankAccountDetails) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      role,
      name,
      email,
      contactNumber,
      gender,
      dateOfBirth,
      marriageStatus,
      bankAccountDetails,
      profilePicture);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String id,
      required final String userId,
      required final Role role,
      required final String name,
      required final String email,
      required final String contactNumber,
      required final Gender gender,
      required final DateTime dateOfBirth,
      required final MarriageStatus marriageStatus,
      required final BankAccountDetails bankAccountDetails,
      required final String? profilePicture}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  Role get role;
  @override
  String get name;
  @override
  String get email;
  @override
  String get contactNumber;
  @override
  Gender get gender;
  @override
  DateTime get dateOfBirth;
  @override
  MarriageStatus get marriageStatus;
  @override
  BankAccountDetails get bankAccountDetails;
  @override
  String? get profilePicture;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
