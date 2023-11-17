// Função para calcular a soma dos números divisíveis por 3 ou 5
function somatorio(n) {
    let soma = 0; // Inicializa a variável soma
    // Loop de 0 até n
    for(let i = 0; i < n; i++) {
        // Se o número for divisível por 3 ou 5, adicione-o à soma
        if(i % 3 === 0 || i % 5 === 0) {
            soma += i;
        }
    }
    // Retorne a soma
    return soma;
}

// Função para verificar se o input é um número inteiro
function isInt(value) {
    // Verifique se o valor é um número e se é um número inteiro
    return !isNaN(value) && 
           parseInt(Number(value)) == value && 
           !isNaN(parseInt(value, 10));
}

// Loop principal do programa
while(true) {
    // Solicita ao usuário que digite um número
    let num = prompt("Digite um número:");
    // Se o número for um inteiro positivo, calcule a soma
    if(isInt(num) && num > 0) {
        // Exibe a soma
        alert(`Soma: ${somatorio(num)}`);
        // Pergunta ao usuário se ele deseja continuar
        let continuar = prompt("Continuar? (S/N)");
        // Se o usuário não desejar continuar, interrompe o loop
        if(continuar.toLowerCase() !== 's') {
            break;
        }
    } else {
        // Se o número não for um inteiro positivo, solicita ao usuário que digite novamente
        alert("Digite um número inteiro positivo.");
    }
}
