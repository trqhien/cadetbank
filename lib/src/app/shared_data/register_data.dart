class RegisterData {
  final String? email;
  final String? accountType;
  final String? phoneNumber;
  final String? password;
  final String? confirmPassword;
  
  const RegisterData({
    this.email, 
    this.accountType, 
    this.phoneNumber, 
    this.password,
    this.confirmPassword
  });

  RegisterData updateEmail(String _email) => copyWith(email: _email);

  RegisterData updateAccountType(String _accountType) => copyWith(accountType: _accountType);

  RegisterData updatePhoneNumber(String _phoneNumber) => copyWith(phoneNumber: _phoneNumber);

  RegisterData copyWith({
    String? email,
    String? accountType,  
    String? phoneNumber,
    String? password,
    String? confirmPassword
  }) => RegisterData(
    email: email ?? this.email,
    accountType: accountType ?? this.accountType,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    password: password ?? this.password,
    confirmPassword: confirmPassword ?? this.confirmPassword
  );
}
