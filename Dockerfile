from ubuntu

run apt-get update && apt-get -y install tor curl openssh-client netcat-openbsd

copy ./torrc /etc/tor/torrc
copy ./run.sh /run.sh

env SSH_AUTH_SOCK=/ssh-auth-sock

entrypoint ["/run.sh"]
