# Get started

```
git clone git@github.com:saulfm08/learn-docker.git
cd learn-docker

cd containers/nginx
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
exec -it web-server /bin/sh
```

Where `web-server` is the container named defined inside `docker-compose.yml`.

Open your browser and try http://localhost

# Shutdown
Shutdown: go to the same directory where `docker-compose.yml` file is located and run:
```
docker-compose down
```

