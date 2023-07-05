/*
## Média Ponderada
Faça um programa que calcule a média do aluno

* O usuário deve inserir 2 notas, de 0 a 10.
* Caso a nota seja inválida, o usuário deve repetir o input.
* Cada nota deve ter um peso, podendo ser escolhido entre 1 a 3.
* Com base nos valores recebidos, calcule a média.
* Deve ser exibido:
* I - Caso seja menor que 5
* R - Caso seja menor que 7
* B - Caso seja menor que 9.5
* MB - Caso seja maior

### Requisitos técnicos
* Faça a lógica com `if`
* Faça a lógica com `switch`
*/

import 'dart:io';

void main() {

  num firstGrade = getGrade("Type the first grade");
  int firstPonderous = getPonderous("Type the first ponderous");

  num secondGrade = getGrade("Type the second grade");
  int secondPonderous = getPonderous("Type the second ponderous");

  int totalPonderous = (firstPonderous + secondPonderous);
  num media = ((firstGrade * firstPonderous) +
      (secondGrade * secondPonderous)) / totalPonderous;

  /*if (media > 0 && media < 5) {
      print('I');
    } else if (media < 7) {
      print('R');
    } else if (media < 9.5) {
      print('B');
    } else if (media > 9.5){
      print('MB');
    } else {
      print('Erro');
    }
    print('Media = $media');*/

  final result = switch (media) {
    >= 0 && < 5 => "I",
    < 7 => "R",
    < 9.5 => "B",
    > 9.5 => "MB",
    _ => "Erro",
  };

  print('Media = $media');
  print(result);
}

num getGrade(String gradeTitle) {
  var gradeInput;
  num grade;

  do {
    print(gradeTitle);
    gradeInput = stdin.readLineSync();
    grade = num.parse(gradeInput);
  } while (grade < 0 || grade > 10);

  return grade;
}

int getPonderous(String ponderousTitle) {
  var ponderousInput;
  int ponderous;

  do {
    print(ponderousTitle);
    ponderousInput = stdin.readLineSync();
    ponderous = int.parse(ponderousInput);
  } while (ponderous < 1 || ponderous > 3);

  return ponderous;
}