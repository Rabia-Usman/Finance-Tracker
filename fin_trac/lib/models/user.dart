class user {
  user({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
  });

  late final id;
  late final name;
  late final email;
  late final image;
  late final createdAt;
  late final updatedAt;
  late final isActive;

  user.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['image'] = image;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['isActive'] = isActive;
    return data;
  }
}
