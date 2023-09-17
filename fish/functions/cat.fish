function cat
    if type -q batcat
        batcat $argv
    else if type -q bat
        bat $argv
    else
        cat $argv
    end
end
