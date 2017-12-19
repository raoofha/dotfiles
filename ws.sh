#!/bin/bash
i3-msg 'append_layout ~/projects/dotfiles/ws.json'
chromium "http://localhost:3000" --new-window &
xcwd | xargs urxvt -cd &
xcwd | xargs urxvt -cd &
xcwd | xargs urxvt -cd &
xcwd | xargs urxvt -cd &
