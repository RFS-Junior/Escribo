class Desafio {
  Desafio();

  static int calculate(int number) {
    int count = number;
    List<int> listValues = [];
    int result = 0;

    for (int i = 0; i < count; ++i) {
      number--;

      if (is3Divided(number) || is5Divided(number)) {
        listValues.add(number);
      }
    }

    for (var element in listValues) {
      result = result + element;
    }

    return result;
  }

  static bool is5Divided(int number) {
    int value = number % 5;
    return value == 0 ? true : false;
  }

  static bool is3Divided(int number) {
    int value = number % 3;
    return value == 0 ? true : false;
  }
}
