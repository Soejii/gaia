import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceHistoryStateWidget {
  static Widget loading() {
    return const Center(child: CircularProgressIndicator());
  }

  static Widget error(String error) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Text(
          'Gagal memuat riwayat',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF8E8E93),
          ),
        ),
      ),
    );
  }

  static Widget empty() {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Text(
          'Belum ada riwayat transaksi',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF8E8E93),
          ),
        ),
      ),
    );
  }
}
