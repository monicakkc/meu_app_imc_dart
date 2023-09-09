import 'package:meu_app_imc/meu_app_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calcularIMC', () {
    expect(calcularIMC(1.8, 90), 27.777777777777775);
  });
}
