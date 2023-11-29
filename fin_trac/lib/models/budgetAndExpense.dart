class budgetAndExpense {
  budgetAndExpense({
    required this.id,
    required this.category,
  });

  late final id;
  late final category;

  budgetAndExpense.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['category'] = category;
    return data;
  }
}
