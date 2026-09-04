class AppRegex {
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  static bool haslowercase(String input) {
    final lowercaseRegex = RegExp(r'[a-z]');
    return lowercaseRegex.hasMatch(input);
  }

  static bool hasUppercase(String input) {
    final uppercaseRegex = RegExp(r'[A-Z]');
    return uppercaseRegex.hasMatch(input);
  }

  static bool hasNumber(String input) {
    final numberRegex = RegExp(r'\d');
    return numberRegex.hasMatch(input);
  }

  static bool hasSpecialCharacter(String input) {
    final specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return specialCharRegex.hasMatch(input);
  }

  static bool hasMinLength(String input, int minLength) {
    return input.length >= minLength;
  }
}
