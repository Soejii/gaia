import 'package:flutter/material.dart';
import 'package:gaia/features/balances/domain/entities/savings_history_entity.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class GenericTransactionUIMapper {
  static String getSavingsIconAsset(TransactionType type) {
    switch (type) {
      case TransactionType.topup:
        return AssetsHelper.icTopup;
      case TransactionType.cashout:
        return AssetsHelper.icCashout;
      case TransactionType.unknown:
        return AssetsHelper.icTopup;
    }
  }

  static String getSavingsDisplayText(TransactionType type) {
    switch (type) {
      case TransactionType.topup:
        return 'Top Up';
      case TransactionType.cashout:
        return 'Cashout';
      case TransactionType.unknown:
        return 'Unkown';
    }
  }

  static Color getSavingsAmountColor(TransactionType type) {
    switch (type) {
      case TransactionType.topup:
        return const Color(0xFF5AAF55);
      case TransactionType.cashout:
        return const Color(0xFFFF7171);
      case TransactionType.unknown:
        return Colors.grey;
    }
  }
}