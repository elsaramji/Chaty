// logic/valiedtor.dart
class Valiedtor {
  static String? passwordValied(String? value) {
    if (value!.isEmpty) {
      return 'password must not be empty';
    } else if (value.length < 8) {
      return "password must be at least 8 characters";
    }
    return null;
  }

  static String? emailValied(String? value) {
    if (value!.isEmpty) {
      return "email must not be empty";
    } else if (value.contains("@") == false && value.contains(".") == false) {
      return 'email such as "exampel@domain.com"';
    }
    return null;
  }

  static String? nameValied(String? value) {
    if (value!.isEmpty) {
      return "name must not be empty";
    } else if (value.length < 3) {
      return "not relly a name";
    }
    return null;
  }
}
