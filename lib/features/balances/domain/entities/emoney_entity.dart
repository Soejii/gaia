class EmoneyEntity {
  final String name;
  final String cardId;
  final String saldoEmoney;
  final String totalTopup;
  final String totalPayment;
  final String totalCashout;

  EmoneyEntity({
    required this.name,
    required this.cardId,
    required this.saldoEmoney,
    required this.totalTopup,
    required this.totalPayment,
    required this.totalCashout,
  });
}