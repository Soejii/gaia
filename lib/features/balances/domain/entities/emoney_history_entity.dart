class EmoneyHistoryEntity {
  final int id;
  final String? amount;
  final String? date;
  final TransactionType transactionType;
  final TransactionStatus status;

  EmoneyHistoryEntity({
    required this.id,
    this.amount,
    this.date,
    required this.transactionType,
    required this.status,
  });
}

enum TransactionStatus {
  success,
  pending,
  failed,
  unknown,
}

enum TransactionType {
  topup,
  cashout,
  billPay,
  canteenPay,
  adminFee,
  unknown,
}

