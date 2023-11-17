import 'dart:io'; // Importa a biblioteca de I/O do Dart

// Função para calcular a soma dos números divisíveis por 3 ou 5
Map<String, dynamic> somatorio(int n) {
    int soma = 0; // Inicializa a variável soma
    List<int> numeros = []; // Inicializa a lista de números
    // Loop de 0 até n
    for(int i = 0; i < n; i++) {
        // Se o número for divisível por 3 ou 5, adicione-o à soma e à lista de números
        if(i % 3 == 0 || i % 5 == 0) {
            soma += i;
            numeros.add(i);
        }
    }
    // Retorne a soma e a lista de números
    return {'soma': soma, 'numeros': numeros};
}

// Função para verificar se o input é um número inteiro
bool isInt(String s) {
    // Verifique se a string pode ser convertida em um número inteiro
    if(s == null) {
        return false;
    }
    return int.tryParse(s) != null;
}

// Loop principal do programa
void main() {
    while(true) {
        // Solicita ao usuário que digite um número
        print("Digite um número:");
        String numStr = stdin.readLineSync();
        // Se o número for um inteiro positivo, calcule a soma
        if(isInt(numStr)) {
            int num = int.parse(numStr);
            // Calcula a soma e obtém a lista de números
            Map<String, dynamic> resultado = somatorio(num);
            // Exibe a soma e a lista de números
            print("Soma: ${resultado['soma']}. Resultante do somatório dos números ${resultado['numeros'].join(', ')} que são menores que $num.");
            // Pergunta ao usuário se ele deseja continuar
            print("Continuar? (S/N)");
            String continuar = stdin.readLineSync();
            // Se o usuário não desejar continuar, interrompe o loop
            if(continuar.toLowerCase() != 's') {
                break;
            }
        } else {
            // Se o número não for um inteiro positivo, solicita ao usuário que digite novamente
            print("Digite um número inteiro positivo.");
        }
    }
}
