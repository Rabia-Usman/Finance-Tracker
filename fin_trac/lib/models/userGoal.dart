class UserGoal {
  UserGoal({
    required this.id,
    required this.userId,
    required this.goalId,
    required this.totalAmount,
    required this.savedAmount,
    required this.desiredDate,
  });

  late final id;
  late final userId;
  late final goalId;
  late final totalAmount;
  late final savedAmount;
  late final desiredDate;

  UserGoal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    goalId = json['goalId'];
    totalAmount = json['totalAmount'];
    savedAmount = json['savedAmount'];
    desiredDate = json['desiredDate'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['userId'] = userId;
    data['goalId'] = goalId;
    data['totalAmount'] = totalAmount;
    data['savedAmount'] = savedAmount;
    data['desiredDate'] = desiredDate;
    return data;
  }
}
