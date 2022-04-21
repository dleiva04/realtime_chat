class User {
  bool online;
  String name;
  String lastName;
  String email;
  String id;
  String photoUrl;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.online,
    this.photoUrl = "",
  });
}
