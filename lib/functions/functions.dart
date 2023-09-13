import 'dart:io';

String lerString(String prompt) {
  print(prompt);
  return stdin.readLineSync()!;
}

double lerDouble(String prompt) {
  double valor = 0; // Declare a variável fora do loop
  do {
    print(prompt);
    String input = stdin.readLineSync()!;
    try {
      valor = double.parse(input);
      if (valor <= 0) {
        print("Digite um valor válido maior que zero.");
      }
    } catch (e) {
      print("Digite um número válido.");
    }
  } while (valor <= 0);
  return valor;
}

String interpretarIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc < 17) {
    return "Magreza moderada";
  } else if (imc < 18.5) {
    return "Magreza leve";
  } else if (imc < 25) {
    return "Saudável";
  } else if (imc < 30) {
    return "Obesidade grau I";
  } else if (imc < 40) {
    return "Obesidade grau II";
  } else {
    return "Obesidade grau III";
  }
}
