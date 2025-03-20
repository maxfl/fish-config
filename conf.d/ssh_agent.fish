set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
pgrep ssh-agent -n | read -x SSH_AGENT_PID; or set -e SSH_AGENT_PID
