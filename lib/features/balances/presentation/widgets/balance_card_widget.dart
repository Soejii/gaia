import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/providers/emoney_controller.dart';
import 'package:gaia/features/balances/presentation/providers/savings_controller.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalanceCardWidget extends ConsumerWidget {
  final BalanceType type;

  const BalanceCardWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 296.w,
      height: 182.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: _getGradientColors(),
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16.h,
            right: 16.w,
            child: SvgPicture.asset(
              _getIconAsset(),
              width: 24.w,
              height: 24.h,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AssetsHelper.imgLogoTransparant,
              width: 120.h,
              height: 140.h,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                SizedBox(height: 4.h),
                _buildCardId(ref),
                SizedBox(height: 20.h),
                _buildBalance(ref),
                SizedBox(height: 20.h),
                _buildSubtitle(),
                SizedBox(height: 4.h),
                _buildName(ref),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Color> _getGradientColors() {
    switch (type) {
      case BalanceType.emoney:
        return [const Color(0xFFFF7A00), const Color(0xFFFF9839)];
      case BalanceType.savings:
        return [const Color(0xFF197BBD), const Color(0xFF3391D0)];
    }
  }

  String _getIconAsset() {
    switch (type) {
      case BalanceType.emoney:
        return AssetsHelper.icEmoney;
      case BalanceType.savings:
        return AssetsHelper.icSaving;
    }
  }

  Widget _buildTitle() {
    final title = switch (type) {
      BalanceType.emoney => 'E-Money',
      BalanceType.savings => 'Tabungan Digital',
    };
    
    return Text(
      title,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCardId(WidgetRef ref) {
    switch (type) {
      case BalanceType.emoney:
        final emoneyState = ref.watch(emoneyControllerProvider);
        final emoney = emoneyState.value!;
        return Text(
          emoney.cardId,
          style: TextStyle(fontSize: 12.sp, color: Colors.white),
        );
      case BalanceType.savings:
        final savingsState = ref.watch(savingsControllerProvider);
        final savings = savingsState.value!;
        return Text(
          savings.cardId,
          style: TextStyle(fontSize: 12.sp, color: Colors.white),
        );
    }
  }

  Widget _buildBalance(WidgetRef ref) {
    switch (type) {
      case BalanceType.emoney:
        final emoneyState = ref.watch(emoneyControllerProvider);
        final emoney = emoneyState.value!;
        return Text(
          emoney.saldoEmoney,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        );
      case BalanceType.savings:
        final savingsState = ref.watch(savingsControllerProvider);
        final savings = savingsState.value!;
        return Text(
          savings.saldoTabungan,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        );
    }
  }

  Widget _buildSubtitle() {
    final subtitle = switch (type) {
      BalanceType.emoney => 'Digital Smart Card',
      BalanceType.savings => 'Kartu Pelajar Digital',
    };
    
    return Text(
      subtitle,
      style: TextStyle(fontSize: 10.sp, color: Colors.white),
    );
  }

  Widget _buildName(WidgetRef ref) {
    switch (type) {
      case BalanceType.emoney:
        final emoneyState = ref.watch(emoneyControllerProvider);
        return emoneyState.when(
          data: (emoney) => Text(
            emoney.name,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
        );
      case BalanceType.savings:
        final savingsState = ref.watch(savingsControllerProvider);
        return savingsState.when(
          data: (savings) => Text(
            savings.name,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
        );
    }
  }
}
