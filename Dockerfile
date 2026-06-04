# Dockerfile para levantar MySQL y cargar la base de datos inicial
FROM mysql:8.0

# Cambia estas credenciales según necesites
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=proyecto_db
ENV MYSQL_USER=appuser
ENV MYSQL_PASSWORD=app_password

# Copia el script principal de creación a la carpeta de inicialización de MySQL
COPY 01_creacion_base_datos.sql /docker-entrypoint-initdb.d/

# Exponer el puerto de MySQL
EXPOSE 3306

# El CMD por defecto del contenedor mysql ya inicia el servidor.
# No es necesario declarar CMD aquí si se usa la imagen oficial de MySQL.
