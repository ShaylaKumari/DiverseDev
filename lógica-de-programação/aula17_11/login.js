// Proposta: Sistema de login --- Entrada de dados via prompt, verificação de campos (campos preenchidos, email com @, senha com 8 caracteres, se o login existe, se a senha está correta).

const usuarios = [
    { email: "ananda@hotmail.com", senha: "ananda123" },
    { email: "shayla@hotmail.com", senha: "shayla123" },
];

try {
    const email = prompt("Digite seu email:");
    const senha = prompt("Digite sua senha:");

    if (!email || !senha) {
        throw new Error("Todos os campos devem ser preenchidos");
    }

    if(!email.includes("@")) {
        throw new Error("Email inválido. Deve conter @");
    }

    if (senha.length < 8) {
        throw new Error("A senha deve conter no mínimo 8 caracteres");
    }

    const emailEncontrado = usuarios.find(usuario => usuario.email === email);
    if (!emailEncontrado) {
        throw new Error("Email não cadastrado");
    }

    if(emailEncontrado.senha !== senha) {
        throw new Error("Senha incorreta");
    }

    alert("Login realizado com sucesso")
} catch (erro) {
    alert(erro);
}

