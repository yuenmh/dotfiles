if test -e $HOME/.local/bin
    fish_add_path $HOME/.local/bin
end

if test -e $HOME/.cargo/bin
    fish_add_path $HOME/.cargo/bin
end

if test -e $HOME/.yarn/bin
    fish_add_path $HOME/.yarn/bin
end

if test -e $HOME/.local/share/gem/ruby/3.0.0/bin
    fish_add_path $HOME/.local/share/gem/ruby/3.0.0/bin
end
