class User {
  final String id;
  final String name;
  final String password;
  final String address;
  final String type;
  final String email;
  final String token;

  User(
      {
      required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.address,
      required this.type,
      required this.token});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["_id"],
      email: json["email"],
      name: json["name"],
      password: json["password"],
      address: json["address"],
      type: json["type"],
      token: json["token"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "email": this.email,
      "name": this.name,
      "password": this.password,
      "address": this.address,
      "type": this.type,
      "token": this.token,
    };
  }
//
}
