import 'dart:io'; // Importa a biblioteca de I/O do Dart

// Função para calcular a soma dos números divisíveis por 3 ou 5
int somatorio(int n) {
    int soma = 0; // Inicializa a variável soma
    // Loop de 0 até n
    for(int i = 0; i < n; i++) {
        // Se o número for divisível por 3 ou 5, adicione-o à soma
        if(i % 3 == 0 || i % 5 == 0) {
            soma += i;
        }
    }
    // Retorne a soma
    return soma;
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
            // Exibe a soma
            print("Soma: ${somatorio(num)}");
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
