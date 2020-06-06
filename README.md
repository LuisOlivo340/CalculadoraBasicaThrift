# CalculadoraBasicaThrift
Una calculadora básica que expone las operaciones de un servidor en un contenedor de docker y en otro se ejecuta el cliente que usa las funciones del servidor.

Abrir una terminal en donde se encuentre el archivo docker-compose y ejecutar el comando
docker-compose build
despues ejecutar el comando 
docker-compose create

una vez iniciado iniciar el cliente y el servidor

docker start Servidor

docker start -i Cliente
