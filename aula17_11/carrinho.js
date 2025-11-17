const itens = [
    { id: 1, nome: "carregador", preco: 50 },
    { id: 2, nome: "fone", preco: 120 },
    { id: 3, nome: "garrafa", preco: 45 },
    { id: 4, nome: "bolsa", preco: 150 },
]

let carrinho = JSON.parse(localStorage.getItem("carrinho")) || [];

const salvar = () => localStorage.setItem("carrinho", JSON.stringify(carrinho));

const adicionar = id => {
    const item = itens.find(i => i.id === id);
    if (!item) {
        return console.log("Produto indisponível");
    }

    const produto = carrinho.find(p => p.id === id);

    produto ? produto.quantidade++ : carrinho.push({ ...item, quantidade: 1 });

    salvar();
    mostrar();
};

const remover = id => {
    const produto = carrinho.find(p => p.id === id);
    if (!produto) {
        return console.log("O item não está no carrinho");
    }

    produto.quantidade > 1 ? produto.quantidade-- : carrinho = carrinho.filter(p => p.id !== id);

    salvar();
    mostrar();
};

const mostrar = () => {
    if (carrinho.length === 0) {
        return console.log("Carrinho vazio");
    }

    const total = carrinho
        .map(produto => {
            const subtotal = produto.quantidade * produto.preco;
            console.log(`${produto.nome} x${produto.quantidade} -> Subtotal: R$ ${subtotal}`);
            return subtotal;
        })
        .reduce((acc, val) => acc + val, 0);

    console.log(`Total: R$ ${total}`);
}