if [$1 -eq "start"]; then
    source ./.venv/bin/activate
    nohup python3 -m swagger_server > ~/robotarm/server.log 2>&1 & echo $! > ~/robotarm/.server.pid &
    deactivate
    cd ~/robotarm
fi

if [$1 -eq "stop"]; then
    server_pid=`cat ~/robotarm/.server.pid`
    kill $server_pid
fi
