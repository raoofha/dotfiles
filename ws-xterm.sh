#!/bin/bash
i3-msg 'append_layout ~/projects/dotfiles/ws.json'
chromium "http://localhost:3000" --new-window &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
