autoload -U compinit; compinit
_comp_options+=(globdots)


source $ZDOTDIR/completion/completion.zsh

source $ZDOTDIR/alias/aliases.zsh
source $ZDOTDIR/prompt/based.zsh

source $ZDOTDIR/plugins/catppuccin.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

