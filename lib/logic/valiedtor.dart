// logic/valiedtor.dart
class Valiedtor {
  /// Validates the given password.
  ///
  /// The [value] parameter is the password to be validated. It should not be null.
  ///
  /// Returns a [String] describing the validation error if the password is invalid,
  /// or `null` if the password is valid.
  static String? passwordValied(String? value) {
    if (value!.isEmpty) {
      return 'password must not be empty';
    } else if (value.length < 8) {
      return "password must be at least 8 characters";
    }
    return null;
  }

  /// Validates an email address.
  ///
  /// This function checks if the given [value] is a valid email address.
  /// It returns a [String] describing the validation error if the email is invalid,
  /// or `null` if the email is valid.
  ///
  /// Parameters:
  ///   - value: The email address to be validated. It should not be null.
  ///
  /// Returns:
  ///   - A [String] describing the validation error if the email is invalid,
  ///     or `null` if the email is valid.
  static String? emailValied(String? value) {
    if (value!.isEmpty) {
      return "email must not be empty";
    } else if (value.contains("@") == false && value.contains(".") == false) {
      return 'email such as "exampel@domain.com"';
    }
    return null;
  }

  /// Validates a name value.
  ///
  /// This function checks if the given [value] is a valid name.
  /// It returns a [String] describing the validation error if the name is invalid,
  /// or `null` if the name is valid.
  ///
  /// Parameters:
  ///   - value: The name value to be validated. It should not be null.
  ///
  /// Returns:
  ///   - A [String] describing the validation error if the name is invalid,
  ///     or `null` if the name is valid.
  static String? nameValied(String? value) {
    if (value!.isEmpty) {
      return "name must not be empty";
    } else if (value.length < 3) {
      return "not relly a name";
    }
    return null;
  }
}
