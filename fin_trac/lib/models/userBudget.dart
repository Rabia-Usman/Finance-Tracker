class UserBudget {
  UserBudget({
    required this.id,
    required this.userId,
    required this.budgetAndExpenseId,
    required this.name,
    required this.amount,
    required this.period,
    required this.userAccountId,
  });

  late final id;
  late final userId;
  late final budgetAndExpenseId;
  late final name;
  late final amount;
  late final period;
  late final userAccountId;

  UserBudget.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    budgetAndExpenseId = json['budgetAndExpenseId'];
    name = json['name'];
    amount = json['amount'];
    period = json['period'];
    userAccountId = json['userAccountId'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['userId'] = userId;
    data['budgetAndExpenseId'] = budgetAndExpenseId;
    data['name'] = name;
    data['amount'] = amount;
    data['period'] = period;
    data['userAccountId'] = userAccountId;
    return data;
  }
}
