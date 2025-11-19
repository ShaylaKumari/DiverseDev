// Proposta: Notas do aluno --- média aritmética, média ponderada, médias arredondadas, maior nota, menor nota e diferença entre notas.

let notas = [7.5, 8.0, 6.5, 9.0, 5.5];
let pesos = [2, 3, 1, 4, 2];
console.log("Notas:", notas);
console.log("Pesos:", pesos);

let mediaAritmetica = notas.reduce((soma, nota) => soma + nota, 0) / notas.length;
console.log("Média aritmética:", mediaAritmetica);

let somaPonderada = notas.reduce((soma, nota, i) => soma + nota * pesos[i], 0);
let somaPesos = pesos.reduce((soma, peso) => soma + peso, 0);
let mediaPonderada = somaPonderada / somaPesos;
console.log("Média ponderada:", mediaPonderada);

let mediaAritmeticaArred = Math.round(mediaAritmetica);
let mediaPonderadaArred = Math.round(mediaPonderada);
console.log("Média aritmética arredondada:", mediaAritmeticaArred);
console.log("Média ponderada arredondada:", mediaPonderadaArred);

let maiorNota = Math.max(...notas);
let menorNota = Math.min(...notas);
console.log("Maior nota:", maiorNota);
console.log("Menor nota:", menorNota);

let diferenca = (maiorNota - menorNota);
console.log("Diferença entre maior e menor nota:", diferenca);