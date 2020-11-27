# Get started

```
git clone git@github.com:saulfm08/learn-docker.git
cd learn-docker
cd containers/database/mariadb
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
exec -it mariadb-server /bin/sh
```

Where `mongodb-server` is the container named defined inside `docker-compose.yml`.

You can use linux `mysql` client or [MySql workbench](https://www.mysql.com/products/workbench/) to connect on `localhost:3306`

# Shutdown
Shutdown: go to the same directory where `docker-compose.yml` file is located and run:
```
docker-compose down
```