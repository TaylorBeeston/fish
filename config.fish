set PATH $PATH /home/taylor/min/
set PATH $PATH /home/taylor/firefox/
set PATH $PATH /home/taylor/bin
set PATH $PATH /home/taylor/.cargo/bin
set -gx EDITOR /usr/bin/nvim
set -gx BROWSER /usr/bin/google-chrome-stable
alias gaa="git add -A && git status"
alias gac="gaa && gitmoji -c"
alias glo="git log --oneline"
alias gl="git cherry -v master || git cherry -v main"
alias git=hub
alias emptyswap="sudo swapoff -a && sudo swapon -a"
alias restartpulse="kill pulseaudio && pulseaudio --start"
alias speaker="bluetoothctl connect 6C:5A:B5:4E:61:65"
alias ls=exa
alias kp="kill compton || kill picom"
alias rb="sudo systemctl restart bluetooth"
alias pnx="pnpm exec nx"
starship init fish | source
set -U FZF_LEGACY_KEYBINDINGS 0
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow --hidden'
fish_vi_key_bindings

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
end

thefuck --alias | source

set -gx PNPM_HOME "/home/taylor/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# pnpm
set -gx PNPM_HOME "/home/taylor/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
