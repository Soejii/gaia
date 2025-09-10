import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/providers/emoney_controller.dart';
import 'package:gaia/features/balances/presentation/providers/savings_controller.dart';
import 'package:gaia/features/balances/presentation/mappers/balance_type_ui_mapper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalanceCardInfoWidget extends ConsumerWidget {
  final BalanceType type;

  const BalanceCardInfoWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (type == BalanceType.emoney) {
      final emoney = ref.watch(emoneyControllerProvider).value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BalanceTypeUIMapper.getDisplayName(type),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            emoney?.cardId ?? BalanceTypeUIMapper.getDefaultCardId(type),
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
          SizedBox(height: 20.h),
          Text(
            emoney?.saldoEmoney ?? 'Rp 0',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            BalanceTypeUIMapper.getSubtitle(type),
            style: TextStyle(fontSize: 10.sp, color: Colors.white),
          ),
          SizedBox(height: 4.h),
          Text(
            emoney?.name ?? BalanceTypeUIMapper.getDefaultUserName(type),
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      );
    } else {
      final savings = ref.watch(savingsControllerProvider).value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BalanceTypeUIMapper.getDisplayName(type),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            savings?.cardId ?? BalanceTypeUIMapper.getDefaultCardId(type),
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
          SizedBox(height: 20.h),
          Text(
            savings?.saldoTabungan ?? 'Rp 0',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            BalanceTypeUIMapper.getSubtitle(type),
            style: TextStyle(fontSize: 10.sp, color: Colors.white),
          ),
          SizedBox(height: 4.h),
          Text(
            savings?.name ?? BalanceTypeUIMapper.getDefaultUserName(type),
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      );
    }
  }
}

