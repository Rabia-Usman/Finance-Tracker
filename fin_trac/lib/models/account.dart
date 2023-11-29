class Account {
  Account({
    required this.id,
    required this.account,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
  });

  late final id;
  late final account;
  late final createdAt;
  late final updatedAt;
  late final isActive;

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    account = json['account'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['account'] = account;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['isActive'] = isActive;
    return data;
  }
}
