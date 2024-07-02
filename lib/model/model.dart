class Admin {
  final String userId;
  final String email;
  final String password;

  Admin({
    required this.userId,
    required this.email,
    required this.password,
  });


  factory Admin.fromFirestore(Map<String, dynamic> json) {
    return Admin(
      userId: json['userId'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'email': email,
      'name': password,
    };
  }
}
