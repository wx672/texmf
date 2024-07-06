#!/bin/bash
tmux rename-window "HTTP demo"

tmux split-window -vfl75%
tmux split-window -vl12

tmux send-keys -t{top} "curl http://cs6.swfu.edu.cn"
tmux send-keys -t{up-of} "watch -tn.1 'ss -4ant dst :http'" C-m
tmux send-keys "sudo tcpdump -i wlp1s0 port http" C-m

tmux select-pane -t{top}
