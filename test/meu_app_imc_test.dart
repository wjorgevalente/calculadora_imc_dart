import 'package:test/test.dart';
import 'package:meu_app_imc/functions/functions.dart';

void main() {
  test('Testar lerString', () {
    String input = 'Hello, World!';
    expect(lerString(input), equals(input));
  });

  test('Testar lerDouble com valor válido', () {
    String input = '5.5';
    expect(lerDouble(input), equals(5.5));
  });

  test('Testar lerDouble com valor inválido', () {
    String input = 'abc';
    expect(() => lerDouble(input), throwsA(TypeMatcher<FormatException>()));
  });

  test('Testar interpretarIMC', () {
    expect(interpretarIMC(15.0), equals('Magreza grave'));
    expect(interpretarIMC(17.0), equals('Magreza moderada'));
    expect(interpretarIMC(18.0), equals('Magreza leve'));
    expect(interpretarIMC(24.0), equals('Saudável'));
    expect(interpretarIMC(29.0), equals('Obesidade grau I'));
    expect(interpretarIMC(39.0), equals('Obesidade grau II'));
    expect(interpretarIMC(40.0), equals('Obesidade grau III'));
  });

  // Adicione mais testes conforme necessário
}
