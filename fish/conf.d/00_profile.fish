set fish_greeting ""

# fish_vi_key_bindings
fish_default_key_bindings

if which nvim > /dev/null
    set -gx EDITOR (which nvim)
end
