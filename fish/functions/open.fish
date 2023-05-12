function open
    xdg-open &>/dev/null $argv &
    disown
end
