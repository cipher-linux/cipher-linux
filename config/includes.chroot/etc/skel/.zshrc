# CIPHER Linux — Kali-style terminal spacing (blank line before prompt)
typeset -g _first_prompt=1
precmd() {
    if [ -z "$_first_prompt" ]; then
        echo ""
    fi
    _first_prompt=
}

# zsh-autosuggestions (inline suggestion, right-arrow to accept — default binding)
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# zsh-syntax-highlighting — must be sourced LAST
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
