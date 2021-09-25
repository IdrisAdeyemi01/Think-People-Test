mixin ValidationMixin {
  String? validateNotEmpty(String? value) =>
      value != null && value.isEmpty ? 'Field cannot be empty' : null;

  String? validateEmail(String? value) {
    bool emailValid = value != null &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);
    return !emailValid ? 'Enter a Valid Email Address' : null;
  }

  String? validatePassword(String? value) => value != null && value.length < 6
      ? 'Password should be more than 5 Characters'
      : null;

  String? validatePhoneNumber(String? value) =>
      value != null && value.length < 10 ? 'Enter a Valid Phone Number' : null;
}
