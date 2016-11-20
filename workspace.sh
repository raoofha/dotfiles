#!/bin/bash
i3-msg 'append_layout /home/raoof/github/dotfiles/workspace.json'
chromium "http://localhost:4000" --new-window &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
xterm -e "cd $(pwd) && /bin/zsh" &
