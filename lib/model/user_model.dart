class UserModel {
  final String name;
  UserModel({this.name = "no-name"});

  factory UserModel.fromJson(Map<String, dynamic> fromJson) {
    return UserModel(name: fromJson['name']);
  }

  Map<String, dynamic> toJson() {
    return {"name": name};
  }
}
