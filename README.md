# docker-torssh

Connect to TOR SSH hidden services from a docker container.

## Usage

### with password

```
docker run --rm -it psyb0t/torssh root@efbqocc4n6dsraaf.onion -p 2022
```

### mount local key

```
docker run --rm -it \
  -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v $HOME/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  psyb0t/torssh root@efbqocc4n6dsraaf.onion -p 2022
```
