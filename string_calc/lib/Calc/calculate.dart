class Calculate {
  // int add(String value) {
  //   return value == "" ? 0 : int.parse(value);
  // }
  int add(String value) {
    if (value.trim().isEmpty) {
      return 0;
    }

    //  Replace newlines with commas, so both act as comma operator
    final cleanedInput = value.replaceAll('\n', ',');

    final listOfStringNumbers = cleanedInput.split(',');
    List<int> numbersList = [];
    for (var stringNumber in listOfStringNumbers) {
      final number = stringNumber.trim();
      if (number.isNotEmpty) {
        numbersList.add(int.parse(number));
      }
    }
    int sum = 0;
    for (var num in numbersList) {
      sum += num;
    }
    print("Sum is $sum");
    return sum;
  }
}
