import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/providers/emoney_controller.dart';
import 'package:gaia/features/balances/presentation/providers/savings_controller.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalanceSummaryWidget extends ConsumerWidget {
  final BalanceType type;

  const BalanceSummaryWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (type == BalanceType.emoney) {
      final emoneyState = ref.watch(emoneyControllerProvider);
      final emoney = emoneyState.value!;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SummaryItem(
            title: 'Total Top Up',
            value: emoney.totalTopup,
            valueColor: const Color(0xFF5AAF55),
          ),
          SizedBox(height: 8.h),
          _SummaryItem(
            title: 'Total Cash Out',
            value: emoney.totalCashout,
            valueColor: const Color(0xFFFF7171),
          ),
          SizedBox(height: 8.h),
          _SummaryItem(
            title: 'Total Payment',
            value: emoney.totalPayment,
            valueColor: const Color(0xFFFF7171),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 3.h,
            width: double.infinity,
            color: Colors.black.withValues(alpha: 0.1),
          ),
        ],
      );
    } else {
      final savingsState = ref.watch(savingsControllerProvider);
      final savings = savingsState.value!;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SummaryItem(
            title: 'Total Debit',
            value: savings.totalDebit,
            valueColor: const Color(0xFF5AAF55),
          ),
          SizedBox(height: 8.h),
          _SummaryItem(
            title: 'Total Kredit',
            value: savings.totalKredit,
            valueColor: const Color(0xFFFF7171),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 3.h,
            width: double.infinity,
            color: Colors.black.withValues(alpha: 0.1),
          ),
        ],
      );
    }
  }
}

class _SummaryItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const _SummaryItem({
    required this.title,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.mainText,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
