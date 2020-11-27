# Docker Engine overview
Docker Engine is an open source containerization technology for building and containerizing your applications. Docker Engine acts as a client-server application with:

- A server with a long-running daemon process dockerd.
- APIs which specify interfaces that programs can use to talk to and instruct the Docker daemon.
- A command line interface (CLI) client docker.

The CLI uses Docker APIs to control or interact with the Docker daemon through scripting or direct CLI commands. Many other Docker applications use the underlying API and CLI. The daemon creates and manage Docker objects, such as images, containers, networks, and volumes.

For more details, see [Docker Documentation](https://docs.docker.com/engine/).

Docker Compose relies on Docker Engine for any meaningful work, so make sure you have Docker Engine installed either locally or remote, depending on your setup.

# Prerequisites
- Docker Desktop: [installation section](https://docs.docker.com/desktop/).
- Docker Compose: [installation section](https://docs.docker.com/compose/install/).


# Samples
Samples can be found [here](https://docs.docker.com/samples/).


# Get started
If you want to build and create all containers once, follow these instructions bellow; otherwise follow the instructions in each containers folders.


To build and create all containers once:
```
git clone git@github.com:saulfm08/learn-docker.git
cd learn-docker/containers

# Reads the docker-compose.yml and build all docker images required
docker-compose build

# Run all docker containers using the docker images created
docker-compose up -d
```

Check if docker containers are created using 
```
docker ps -a
```

The output shoulb be like this:
```
$ docker ps -a
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                        PORTS                      NAMES
13e05b46ed1b        mongo                   "bash ./database/mon…"   43 seconds ago      Exited (127) 42 seconds ago                              containers_mongosetup_1
226f269bcc09        containers_nginx        "/docker-entrypoint.…"   44 seconds ago      Up 42 seconds                 0.0.0.0:80->80/tcp         web-server
a3ac89e5088f        containers_mongo        "/usr/bin/mongod --b…"   48 seconds ago      Up 43 seconds                 0.0.0.0:27017->27017/tcp   mongodb-server
2df52126c588        redis:alpine            "docker-entrypoint.s…"   48 seconds ago      Up 43 seconds                 0.0.0.0:6379->6379/tcp     redis-server
67ab8e8b1ab2        containers_app-server   "docker-entrypoint.s…"   48 seconds ago      Up 43 seconds                 0.0.0.0:3000->3000/tcp     app-server
8189dc41b6b7        containers_sql-db       "docker-entrypoint.s…"   48 seconds ago      Up 44 seconds                 0.0.0.0:3306->3306/tcp     mariadb-server
```



You can also login into the container:
```
exec -it web-server /bin/sh
```

Where `web-server` is the container named defined inside `docker-compose.yml`.

Open you browser and try http://localhost

# Shutdown
Shutdown: go to the same directory where `docker-compose.yml` file is located and run:
```
docker-compose down
```
