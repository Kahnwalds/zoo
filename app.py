from flask import Flask, render_template

app = Flask(__name__)  #Crea una instancia de Flask llamada app

@app.route('/')  # Define la ruta principal de la aplicación
def index():
    return render_template('index.html')  # Renderiza la plantilla index.html

if __name__ == '__main__':
    app.run(host='0.0.0.0')




