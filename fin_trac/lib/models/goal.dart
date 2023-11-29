class Goal {
  Goal({
    required this.id,
    required this.name,
  });

  late final id;
  late final name;

  Goal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
