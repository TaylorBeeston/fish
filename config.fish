set PATH $PATH /home/taylor/min/
set PATH $PATH /home/taylor/firefox/
set PATH $PATH /home/taylor/bin
set PATH $PATH /home/taylor/.cargo/bin
set -gx EDITOR /usr/bin/nvim
set -gx BROWSER /usr/bin/brave
alias gaa="git add -A && git status"
alias gac="gaa && gitmoji -c"
alias glo="git log --oneline"
alias gl="git cherry -v master || git cherry -v main"
alias git=hub
alias emptyswap="sudo swapoff -a && sudo swapon -a"
alias restartpulse="kill pulseaudio && pulseaudio --start"
alias speaker="bluetoothctl connect 6C:5A:B5:4E:61:65"
alias ls=exa
alias la="exa -la"
alias kp="kill compton || kill picom"
alias rb="sudo systemctl restart bluetooth"
alias pnx="pnpm exec nx"
alias bnx="bunx nx"
alias ae="~/Android/Sdk/emulator/emulator -avd NewPhone"
alias mac="cd ~/OSX/OSX-KVM && ./OpenCore-Boot.sh"
starship init fish | source
set -U FZF_LEGACY_KEYBINDINGS 0
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow --hidden'
fish_vi_key_bindings


# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# pnpm
set -gx PNPM_HOME "/home/taylor/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

if [ "$TERM" = "linux" ]
    echo -en "\e]P0090618"
    echo -en "\e]P1C34043"
    echo -en "\e]P276946A"
    echo -en "\e]P3C0A36E"
    echo -en "\e]P47E9CD8"
    echo -en "\e]P5957FB8"
    echo -en "\e]P66A9589"
    echo -en "\e]P7C8C093"
    echo -en "\e]P8727169"
    echo -en "\e]P9E82424"
    echo -en "\e]PA98BB6C"
    echo -en "\e]PBE6C384"
    echo -en "\e]PC7FB4CA"
    echo -en "\e]PD938AA9"
    echo -en "\e]PE7AA89F"
    echo -en "\e]PFDCD7BA"
    clear # Clear artifacts
end

# opam configuration
source /home/taylor/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/taylor/.ghcup/bin # ghcup-env

# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l blue 7FB4CA blue
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $green
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $blue
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $cyan
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
