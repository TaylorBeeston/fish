set PATH $PATH /home/taylor/min/
set PATH $PATH /home/taylor/firefox/
set PATH $PATH /home/taylor/bin
set PATH $PATH /home/taylor/.cargo/bin
set -gx EDITOR /usr/bin/nvim
set -gx BROWSER /usr/bin/google-chrome-stable
alias gaa="git add -A && git status"
alias gac="gaa && gitmoji -c"
alias glo="git log --oneline"
alias git=hub
alias emptyswap="sudo swapoff -a && sudo swapon -a"
starship init fish | source
set -U FZF_LEGACY_KEYBINDINGS 0
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow --hidden'
fish_vi_key_bindings

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
end
