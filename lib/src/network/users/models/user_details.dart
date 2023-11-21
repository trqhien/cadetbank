class UserDetails {
  final String? username;
  final String email;
  final String accountType;
  final String phone;

  UserDetails({
    this.username, 
    required this.email, 
    required this.accountType, 
    required this.phone
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      username: json["username"] as String?,
      email: json["email"] as String,
      accountType: json["accountType"] as String,
      phone: json["phone"] as String,
    );
  }

  factory UserDetails.mock() => UserDetails(
    username: "@trqhienmaya",
    email: "hi.en.tr.an@ma.ya",
    accountType: "personal",
    phone: "+84764846494",
  );

  UserDetails copyWith({
    String? username,
    String? email,
    String? accountType,
    String? phone,
  }) => UserDetails(
    username: username ?? this.username,
    email: email ?? this.email, 
    accountType: accountType ?? this.accountType, 
    phone: phone ?? this.phone
  );
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserDetails 
      && other.username == username
      && other.email == email
      && other.accountType == accountType
      && other.phone == phone;
  }
  
  @override
  int get hashCode => email.hashCode 
    ^ username.hashCode
    ^ accountType.hashCode
    ^ phone.hashCode;
}