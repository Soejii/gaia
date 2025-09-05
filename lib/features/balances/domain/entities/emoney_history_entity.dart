class EmoneyHistoryEntity {
  final String amount;
  final String date;
  final String transaction;
  final String status;

  EmoneyHistoryEntity({
    required this.amount,
    required this.date,
    required this.transaction,
    required this.status,
  });

  bool get isTopup => transaction == 'topup';
  bool get isCashout => transaction == 'cashout';
  bool get isBillpay => transaction == 'bill_pay';

  bool get isSuccess => status == 'success';
  bool get isPending => status == 'pending';
  bool get isFailed => status == 'failed';
}
