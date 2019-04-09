#!/usr/bin/env bash
tor_proxy_up () {
    curl -s -x socks5://127.0.0.1:9050 example.org > /dev/null

    retval=$?
    if [ $retval -ne 0 ]; then
        return 0
    fi

    return 1
}

trap exit SIGINT
tor &
is_tor_proxy_up=0; while [ "$is_tor_proxy_up" -ne 1 ]; do
    tor_proxy_up
    is_tor_proxy_up=$?
    sleep 1
done 2> /dev/null && ssh -o ProxyCommand="nc -x 127.0.0.1:9050 %h %p" "$@"
