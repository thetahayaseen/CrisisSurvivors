// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountDetailsImpl _$$BankAccountDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountDetailsImpl(
      bank: json['bank'] as String,
      branchCode: json['branchCode'] as String,
      accountNumber: json['accountNumber'] as num,
    );

Map<String, dynamic> _$$BankAccountDetailsImplToJson(
        _$BankAccountDetailsImpl instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'branchCode': instance.branchCode,
      'accountNumber': instance.accountNumber,
    };
