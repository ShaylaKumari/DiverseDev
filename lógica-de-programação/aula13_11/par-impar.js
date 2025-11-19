// Proposta: Par ou ímpar --- Exibir quantidade de números pares e ímpares, soma dos pares e soma dos ímpares, listar números primos.

let numeros = [3, 7, 8, 10, 13, 17, 20];

let pares = 0;
let impares = 0;
let somaPares = 0;
let somaImpares = 0;
let primos = [];

for (num of numeros) {
    if (num % 2 == 0) {
        pares++;
        somaPares += num;
    } else {
        impares++;
        somaImpares += num;
    }

    let primo = true;
    if (num < 2) primo = false;
    else {
        for (let i = 2; i < num; i++) {
            if (num % i == 0) {
                primo = false;
            }
        }
    }

    if (primo) {
        primos.push(num);
    }
}

console.log("Quantidade de números pares:", pares);
console.log("Quantidade de números ímpares:", impares);
console.log("Soma dos pares:", somaPares);
console.log("Soma dos ímpares:", somaImpares);
console.log("Números primos:", primos);
