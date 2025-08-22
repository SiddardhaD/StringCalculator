import 'package:string_calc/Calc/calculate.dart';
import 'package:string_calc/SampleTest/greet_world.dart';
import 'package:test/test.dart';

void main() {
  test('should return Hello World', () {
    final greet = Greet();
    expect(greet.sayHello(), "Hello World");
  });

  test('should wish with given name', () {
    final greet = Greet();
    expect(greet.wish("Siddardha"), "Hello Siddardha");
  });

  // test('should return 0 when adding empty string', () {
  //   final calc = Calculate();
  //   expect(calc.add(""), 0);
  // });

  // lets start asssesment
  /// According to assesment, i need to pass string of comma-separated numbers
  /// and Output: an integer, sum of the numbers
  test('should throw Error when i pass negetive numbers', () {
    final calc = Calculate();
    //here i am passing a single argument, seperated by a comma and other delemeters also.
    //i am pasing below number based on assesment
    expect(
      () => calc.add("11,-1"),
      throwsA(
        predicate(
          (e) => e.toString().contains("Negative numbers not allowed: -1"),
        ),
      ),
    );
  });
}
