### Git Complete - START
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
### Git Complete - END


### Git Prompt - START
GIT_PS1_SHOWDIRTYSTATE=true
setopt prompt_subst
. ~/.zsh/git-prompt.sh
export PS1='[%n@mbp %~$(__git_ps1)]$ '
### Git Prompt - END


### Add ASDF to shell - START
. /usr/local/opt/asdf/asdf.sh
### Add ASDF to shell - END

# Load nodenv automatically by appending
# the following to ~/.zshrc:

eval "$(nodenv init -)"
