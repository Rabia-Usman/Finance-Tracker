class UserExpense {
  UserExpense({
    required this.id,
    required this.userId,
    required this.budgetAndExpenseId,
    required this.name,
    required this.amount,
    required this.userAccountId,
  });

  late final id;
  late final userId;
  late final budgetAndExpenseId;
  late final name;
  late final amount;
  late final userAccountId;

  UserExpense.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    budgetAndExpenseId = json['budgetAndExpenseId'];
    name = json['name'];
    amount = json['amount'];
    userAccountId = json['userAccountId'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['userId'] = userId;
    data['budgetAndExpenseId'] = budgetAndExpenseId;
    data['name'] = name;
    data['amount'] = amount;
    data['userAccountId'] = userAccountId;
    return data;
  }
}

class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}
