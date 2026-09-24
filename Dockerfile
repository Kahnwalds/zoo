#imagen base con Python 3.14
FROM python:3.14

#Carpeta de trabajo dentro del contenedor para nuestra aplicación
WORKDIR /app

#Copia archivo desde mi proyecto hacia la imagen que estoy construyendo
#El primer punto (.) representa el directorio actual de mi proyectom que es el origen.
#El segundo (.) representa el directorio actual dentro de la imagen, que es el destino
#Se usa . porque ambos representan el directorio actual según el contexto de cada lado.
COPY . .

#Instalar dependencias de Python
RUN pip install -r requirements.txt

#Comando que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]