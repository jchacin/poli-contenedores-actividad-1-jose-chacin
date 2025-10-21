# Pasos para ejecutar el proyecto

## Requisitos

- Docker Desktop en ejecución
- Node/npm para el front
- Archivos: `Dockerfile`, `init.sql`, `database/data_insert.sql`, proyecto .NET

## 1. Generar la imagen de Postgres

```bash
docker build -t custom-postgres-img .
```

Verificar imagen:

```bash
docker images
```

## 2. Crear volumen de datos y red

```bash
docker volume create pgdata
docker volume ls
docker volume inspect pgdata

docker network create backend-net
```

## 3. Correr el contenedor de base de datos

```bash
docker run --name my_postgres_db \
    --network backend-net \
    -e POSTGRES_USER=db_user \
    -e POSTGRES_PASSWORD=db_pass \
    -e POSTGRES_DB=db_demo \
    -v pgdata:/var/lib/docker/volumes/pgdata/_data \
    -v ${PWD}/init.sql:/docker-entrypoint-initdb.d/init.sql \
    -p 5433:5432 \
    -d custom-postgres-img
```

Verificar contenedor:

```bash
docker ps
```

## 4. Generar la imagen de la API .NET

```bash
docker build -t net-core-api-img .
```

Verificar imagen:

```bash
docker images
```

## 5. Correr contenedor de la API

```bash
docker run --name web_api \
    --network backend-net \
    -e ASPNETCORE_ENVIRONMENT=Development \
    -p 5000:5000 \
    -d net-core-api-img
```

## 6. Correr la aplicación front

```bash
npm run dev
```

## 7. Insertar datos

- Insertar datos desde el formulario del front.
- Alternativa: ejecutar el script de inserción:

```bash
# desde la máquina que tenga acceso a la base o dentro de un contenedor psql
psql "host=localhost port=5433 dbname=db_demo user=db_user password=db_pass" -f database/data_insert.sql
```

## 8. Verificar datos

Conéctese a la base de datos (p. ej. con `psql`, DBeaver o PgAdmin) y valide los registros insertados en `db_demo`.
