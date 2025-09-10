class SavingsHistoryEntity {
  final int id;
  final String? date;
  final int? amount;
  final TransactionStatus status;
  final TransactionType type;

  SavingsHistoryEntity({
    required this.id,
    this.date,
    this.amount,
    required this.status,
    required this.type,
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
  unknown,
}
