# docker-torssh

Connect to TOR SSH hidden services from a docker container.

## Get image

From docker hub

```
docker pull psyb0t/torssh
```

or build it on your own machine

```
git clone https://github.com/psyb0t/docker-torssh.git
docker build -t psyb0t/torssh docker-torssh/
```

## Usage


```
docker run --rm -it psyb0t/torssh root@efbqocc4n6dsraaf.onion -p 2022
```

### with ssh keys using agent

```
docker run --rm -it \
  -v $SSH_AUTH_SOCK:/ssh-auth-sock \
  psyb0t/torssh root@efbqocc4n6dsraaf.onion -p 2022
```
