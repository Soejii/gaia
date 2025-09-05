import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/widgets/balance_history_list_widget.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class BalanceHistoryScreen extends StatelessWidget {
  final BalanceType type;
  
  const BalanceHistoryScreen({
    super.key, 
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final title = type == BalanceType.emoney ? 'Riwayat Transaksi E-Money' : 'Riwayat Transaksi Tabungan';
    
    return Scaffold(
      appBar: CustomAppBarWidget(title: title, leadingIcon: true),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: BalanceHistoryListWidget(type: type),
      ),
    );
  }
}
