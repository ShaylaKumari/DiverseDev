// Proposta: Calcular IMC do indivíduo. 

let peso = prompt("Digite seu peso: ");
let altura = prompt("Digite sua altura: ");

let imc = peso / (altura * altura);
console.log("Seu IMC é:", imc);

if (imc < 18.5) {
    console.log("Você está abaixo do peso");   
} else if (imc < 25) {
    console.log("Você está no peso normal");
} else if (imc < 30) {
    console.log("Você está com sobrepeso");
} else if (imc < 35) {
    console.log("Você está com obesidade grau I");
} else {
    console.log("Você está com obesidade grau II");
} 