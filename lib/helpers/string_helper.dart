class StringHelper {
  /// Capitalizes the first letter of a string.
  static String capitalize(String string) {
    if (string.isEmpty) {
      return string;
    }

    return string[0].toUpperCase() + string.substring(1);
  }

  static String capitalizeAllWords(String string) {
    if (string.isEmpty) {
      return string;
    }

    return string.split(" ").map((str) => capitalize(str)).join(" ");
  }
}
