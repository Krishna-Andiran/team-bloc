class UserModel {
  final String name;
  UserModel({this.name = "no-name"});

  factory UserModel.fromJson(Map<String, dynamic> fromJson) {
    return UserModel(name: fromJson['email']);
  }

  Map<String, dynamic> toJson() {
    return {"email": name};
  }
}
