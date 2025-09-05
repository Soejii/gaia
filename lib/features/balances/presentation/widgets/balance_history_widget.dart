import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/balances/domain/entities/emoney_history_entity.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/providers/emoney_history_controller.dart';
import 'package:gaia/features/balances/presentation/widgets/transaction_history_item_widget.dart';
import 'package:gaia/features/balances/presentation/widgets/balance_history_state_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalanceHistoryWidget extends ConsumerWidget {
  final BalanceType type;
  final int? itemLimit;

  const BalanceHistoryWidget({
    super.key,
    required this.type,
    this.itemLimit = 5,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Riwayat Transaksi',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {
                final typeParam = type == BalanceType.emoney ? 'emoney' : 'savings';
                context.push('/home/balance/balance-history?type=$typeParam');
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'Lihat Semua',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF009ADE),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        _buildHistoryContent(ref),
      ],
    );
  }

  Widget _buildHistoryContent(WidgetRef ref) {
    switch (type) {
      case BalanceType.emoney:
        return _buildEmoneyHistory(ref);
      case BalanceType.savings:
        return _buildSavingsHistory();
    }
  }

  Widget _buildEmoneyHistory(WidgetRef ref) {
    final historyState = ref.watch(emoneyHistoryControllerProvider);

    return historyState.when(
      data: (historyList) => _buildHistoryList(historyList),
      loading: () => _buildLoading(),
      error: (error, stack) => _buildError(error.toString()),
    );
  }

  Widget _buildSavingsHistory() {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'Savings History\nComing Soon',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryList(List<EmoneyHistoryEntity> historyList) {
    if (historyList.isEmpty) {
      return BalanceHistoryStateWidget.empty();
    }

    final displayList = itemLimit != null && itemLimit! < historyList.length
        ? historyList.take(itemLimit!).toList()
        : historyList;

    return Column(
      children: displayList.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        
        return Column(
          children: [
            TransactionHistoryItemWidget(item: item),
            if (index < displayList.length - 1)
              Container(
                height: 1.h,
                color: Colors.black.withValues(alpha: 0.1),
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildLoading() {
    return SizedBox(
      height: 200.h,
      child: BalanceHistoryStateWidget.loading(),
    );
  }

  Widget _buildError(String error) {
    return BalanceHistoryStateWidget.error(error);
  }
}
