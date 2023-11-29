class UserAccount {
  UserAccount({
    required this.id,
    required this.userId,
    required this.accountId,
    required this.amount,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
  });

  late final id;
  late final userId;
  late final accountId;
  late final amount;
  late final currency;
  late final createdAt;
  late final updatedAt;
  late final isActive;

  UserAccount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    accountId = json['accountId'];
    amount = json['amount'];
    currency = json['currency'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['userId'] = userId;
    data['accountId'] = accountId;
    data['amount'] = amount;
    data['currency'] = currency;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['isActive'] = isActive;
    return data;
  }
}
