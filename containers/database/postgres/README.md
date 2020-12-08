# Get started

```
git clone git@github.com:saulfm08/learn-docker.git
cd learn-docker
cd containers/database/postgres
```

Copy the .env.sample to .env. Open and edit `.env` variables if needed:
```
cp .env.sample .env
```

After configure .env:
```
# Reads the docker-compose.yml and build the docker image
docker-compose build

# Run a docker container using the docker image created
docker-compose up -d
```

Check if docker containers are created using 
```
docker ps -a
```

You can also login into the container:
```
exec -it postgres-server /bin/sh
```

Where `postgres-server` is the container name defined inside `docker-compose.yml`.

You can use linux `pgsql` client or [PgAdmin](https://www.pgadmin.org/) to connect on `localhost:5432`

# Shutdown
Shutdown: go to the same directory where `docker-compose.yml` file is located and run:
```
docker-compose down
```
