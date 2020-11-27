# Get started

```
git clone git@github.com:saulfm08/learn-docker.git
cd learn-docker
cd containers/database/mongodb
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

As said in `docker-compose.yml`, it will also run a `job` using `mongo_setup.sh` script.

Check if docker containers are created using 
```
docker ps -a
```

You can also login into the container:
```
exec -it mongodb-server /bin/sh
```

Where `mongodb-server` is the container named defined inside `docker-compose.yml`.

You can use linux `mongo shell` client or [MongoDB Compass](https://www.mongodb.com/try/download/compass) to connect on `localhost:27017`

# Shutdown
Shutdown: go to the same directory where `docker-compose.yml` file is located and run:
```
docker-compose down
```