import 'package:meu_app_imc/classes/pessoa.dart';

import 'package:meu_app_imc/meu_app_imc.dart';
import 'package:meu_app_imc/functions/mostrar_imc.dart';
import 'package:meu_app_imc/models/console_utils.dart';
void main(List<String> arguments) {
  print("Bem vindo a calculadora IMC simplificada!");

  var line = Pessoa(ConsoleUtils.lerStringTexto("Digite seu nome: "), 
                    ConsoleUtils.lerStringTexto("Informe o sexo (M / F): "),
                    ConsoleUtils.lerDoubleTexto("Informe sua altura: "),
                    ConsoleUtils.lerDoubleTexto("Informe seu peso: "));
  if (line.getAltura() != 0 && line.getPeso() != 0) {
    double imc = calcularIMC(line.getAltura(),line.getPeso());
    print("${line.getNome()}, o valor dos seu IMC é: $imc");
    print("Esse número significa: ${mostrarIMC(imc)}");
  } else {
    print("Dados informados incorretamente. Não foi possível calular.");
  }

}
