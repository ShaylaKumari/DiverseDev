import requests

url = "http://localhost:5000/webhook"

data_send = {
    "event": "send",
    "user_id": 123,
    "message": "Link enviado para redefinição de senha"
}

data_success = {
    "event": "success",
    "user_id": 123,
    "message": "Senha redefinida com sucesso"
}

data_failed = {
    "event": "failed",
    "user_id": 123,
    "message": "Falha na redefinição de senha"
}

response = requests.post(url, json=data_failed)

if response.status_code == 200:
    print("Webhook enviado com sucesso.")
else:
    print("Erro ao enviar webhook.")