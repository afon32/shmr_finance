class GetTransactionByPeriodUseCaseRequest {
  final int accountId;
  final DateTime? startDate;
  final DateTime? endDate;

  GetTransactionByPeriodUseCaseRequest(
      {required this.accountId,
      required this.startDate,
      required this.endDate});
}
