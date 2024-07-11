class SignupState {
  String _email = '';
  String _password = '';
  String _username = '';

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }

  set username(String username) {
    _username = username;
  }

  String get email {
    return _email;
  }

  String get password {
    return _password;
  }

  String get username {
    return _username;
  }
}
