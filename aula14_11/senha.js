const validarSenha = (senha) => {
    const validaNumero = /[0-9]/.test(senha);
    const validaMaiuscula = /[A-Z]/.test(senha);
    const validarEspecial = /[^a-z-A-Z-0-9]/.test(senha);

    if (senha.length < 8 || !validaNumero || !validaMaiuscula || !validarEspecial) {
        return "A senha deve conter no mínimo 8 caracteres, com pelo menos um número, uma letra maiúscula e um caractere especial."
    }

    return "Senha validada com sucesso";
};

let senhaDigitada = prompt("Digite sua senha:");
alert(validarSenha(senhaDigitada));