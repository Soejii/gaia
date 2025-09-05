import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaia/features/balances/domain/entities/emoney_history_entity.dart';
import 'package:intl/intl.dart';

class TransactionHistoryItemWidget extends StatelessWidget {
  final EmoneyHistoryEntity item;

  const TransactionHistoryItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          _buildTransactionIcon(),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getTransactionTitle(),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: _getTitleColor(),
                  ),
                ),
                SizedBox(height: 4.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatDate(item.date),
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _formatTime(item.date),
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                item.amount,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.h),
              _buildStatusText(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionIcon() {
    final iconData = _getTransactionIcon();

    return SvgPicture.asset(
      iconData,
      width: 25.w,
      height: 25.h,
    );
  }

  String _getTransactionIcon() {
    if (item.isTopup) return 'assets/icons/ic_topup.svg';
    if (item.isCashout) return 'assets/icons/ic_cashout.svg';
    if (item.isBillpay) return 'assets/icons/ic_cashout.svg';
    return 'assets/icons/ic_topup.svg';
  }

  Color _getTitleColor() {
    if (item.isTopup) return const Color(0xFF5AAF55);
    if (item.isCashout || item.isBillpay) return const Color(0xFFFF7171);
    return Colors.black;
  }

  String _getTransactionTitle() {
    if (item.isTopup) return 'Topup';
    if (item.isCashout) return 'Cashout';
    if (item.isBillpay) return 'Bill Payment';
    return item.transaction;
  }

  Widget _buildStatusText() {
    Color statusColor;
    String statusText;
    
    if (item.isSuccess) {
      statusColor = const Color(0xFF27AE60);
      statusText = 'Success';
    } else if (item.isPending) {
      statusColor = const Color(0xFFF39C12);
      statusText = 'Pending';
    } else {
      statusColor = const Color(0xFFE74C3C);
      statusText = 'Failed';
    }

    return Text(
      statusText,
      style: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
        color: statusColor,
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd MMM yyyy').format(date);
    } catch (e) {
      return dateString;
    }
  }

  String _formatTime(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('HH:mm').format(date) + ' WIB';
    } catch (e) {
      return dateString;
    }
  }
}
