import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/balances/domain/entities/emoney_history_entity.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/providers/emoney_history_controller.dart';
import 'package:gaia/features/balances/presentation/widgets/transaction_history_item_widget.dart';
import 'package:gaia/features/balances/presentation/widgets/balance_history_state_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalanceHistoryListWidget extends ConsumerWidget {
  final BalanceType type;

  const BalanceHistoryListWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    return ListView.builder(
      itemCount: historyList.length,
      itemBuilder: (context, index) {
        final item = historyList[index];
        return Column(
          children: [
            TransactionHistoryItemWidget(item: item),
            if (index < historyList.length - 1)
              Container(
                height: 1.h,
                color: Colors.black.withValues(alpha: 0.1),
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
          ],
        );
      },
    );
  }

  Widget _buildLoading() {
    return BalanceHistoryStateWidget.loading();
  }

  Widget _buildError(String error) {
    return BalanceHistoryStateWidget.error(error);
  }
}
