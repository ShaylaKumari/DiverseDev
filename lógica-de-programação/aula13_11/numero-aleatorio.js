// Proposta: Programa para adivinhar número --- Gerar o número aleatório de 0 a 100, utilização de prompt para entrada de dados, comparação de número aleatório com o palpite, retorno se o palpite é menor/maior/igual ao número aleatório, encerrar após acerto.

let numeroAleatorio = Math.floor(Math.random() * 101);
console.log(numeroAleatorio);

let palpite = Number(prompt("Adivinhe o número aleatório entre 0 e 100:"));

while(palpite != numeroAleatorio) {
    if (palpite > numeroAleatorio) {
        alert("O número digitado é maior que o número aleatório, tente novamente.");
    } else {
        alert("O número digitado é menor que o número aleatório, tente novamente.");
    }

    palpite = Number(prompt("Tente novamente (0 a 100):"));
}

alert(`Parabéns! Você acertou o número ${numeroAleatorio}`);