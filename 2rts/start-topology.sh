#!/bin/bash

RTR=/freertr/rtr.jar
HWSW=/freertr/2rts/

tmux new-session -d -s rare 'java -jar '$RTR' routersc '$HWSW'r1-hw.txt '$HWSW'r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r2-hw.txt '$HWSW'r2-sw.txt' ENTER;
tmux select-layout tiled;
tmux a;

