#!/bin/bash
myserver=`bundle exec ruby main.rb &`

until myserver; do
    echo "Server 'myserver' crashed with exit code $?.  Respawning.." >&2
    sleep 1
done