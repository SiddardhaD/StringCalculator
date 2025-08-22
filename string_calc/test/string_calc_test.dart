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

  test('should return 0 when adding empty string', () {
    final calc = Calculate();
    expect(calc.add(""), 0);
  });
}
