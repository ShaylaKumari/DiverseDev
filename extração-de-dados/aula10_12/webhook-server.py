import flask

app = flask.Flask(__name__)

@app.route("/webhook", methods=["POST"])
def handle_webhook():
    data = flask.request.get_json()
    event = data.get("event")
    print("Received data:", data)

    if event == "send":
        print("Envio de email: Link para redefinir senha")
    elif event == "success":
        print("Envio de email: Informando redefinição de senha")
    else:
        print("Envio de email: Informando falha na redefinição de senha")
        
    return "OK"

if __name__ == "__main__":
    app.run()