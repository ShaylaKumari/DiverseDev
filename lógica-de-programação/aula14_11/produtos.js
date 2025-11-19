// Proposta: Estoque do produto --- Calcular preço total do estoque do produto, aplicar 10% de desconto, filtrar produtos com preço acima de R$ 50,00

const produtos = [
    { nome: "camisa", preco: 80, quantidade: 15 },
    { nome: "calça", preco: 120, quantidade: 10 },
    { nome: "tenis", preco: 100, quantidade: 8 },
    { nome: "meia", preco: 40, quantidade: 5 }
];

const calcularTotalEstoque = produtos =>
    produtos.map(p => ({
        ...p,
        total: p.preco * p.quantidade
    }));

const aplicarDesconto = produtos =>
    produtos.map(p => ({
        ...p,
        preco: p.preco * 0.9
    }));

const filtrarAcimaDe50 = produtos =>
    produtos.filter(p => p.preco > 50);

const totalEstoque = calcularTotalEstoque(produtos);
const produtosComDesconto = aplicarDesconto(produtos);
const produtosAcimaDe50 = filtrarAcimaDe50(produtosComDesconto);

console.log("Preço total do estoque dos produtos:", totalEstoque);
console.log("Produtos com desconto:", produtosComDesconto);
console.log("Produtos acima de R$ 50,00 com desconto:", produtosAcimaDe50);