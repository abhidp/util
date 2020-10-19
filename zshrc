# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/abhi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history zsh-autosuggestions aws zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"/usr/local/bin/aws_completer


#aws

#general
export c="code-insiders"
alias t=touch
mcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
chpwd() ls

run() {
    number=$1
    shift
    for i in `seq $number`; do
      $@
    done
}
alias gnit="sh ~/scripts/gitnpm.sh"
alias rf="rm -rf"

alias s="source"
alias z="~/.zshrc"
alias p="cd ~/Documents/projects"
alias zz="c ~/.zshrc"
alias pp="c ~/.p10k.zsh"
alias sp="source ~/.p10k.zsh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias dree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias c=$c
alias sw="/Volumes/Macintosh\ HD/usr/sbin/system_profiler SPSoftwareDataType"
alias hd="/Volumes/Macintosh\ HD/usr/sbin/system_profiler SPHardwareDataType"


#Cypress
export CYPRESS_BASEURL="http://localhost:3000"

#aws-cli
alias ap="aws --profile personal"
alias al="awslocal"

#brew
export b=brew
alias b="$b"
alias bs="$b search"
alias bi="$b install"
alias bci="$b cask install"
alias bcu="$b cask uninstall"
alias bls="$b list"
alias blink="$b link"
alias blv="$b list --versions"
alias bupg="$b upgrade"
alias bu="$b uninstall"

#git
export g=git
alias g=$g
alias gi="$g init"
alias gcl="$g clone"
alias gst="$g status"
alias gc="$g add . && $g commit -m "
alias gm="$g checkout master && $g pull origin"
alias gps="$g push -u origin"
alias gpf="$g push -f origin"
alias gpl="$g pull"
alias gb="$g branch"
alias gs="$g status"
alias gbco="$g checkout -b"
alias gco="$g checkout"
alias gpo="$g pull origin"
alias gpom="$g pull origin master"
alias gcom="$g checkout master"
alias grh="$g reset --hard"
alias grs="$g reset --soft"
alias ga="$g add -A"
alias gca="$g commit --amend"
alias gpu="$g push -u origin HEAD" #same as git push --set-upstream origin branchName
alias gd="$g diff"
alias gclean="$g clean -f -d"
alias gpr="$g pull --rebase"
alias gpmr="$g pull origin master --rebase"
alias gss="$g stash save -u"
alias gsp="$g stash pop"
alias gl="$g log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias gcm="$g add --all && $g commit --amend --no-edit && $g push -f"

#git keybindings
# git pull (ctrl-g+p)
function gitpull() { echo "git pull"; git pull; zle reset-prompt; zle redisplay}
zle -N gitpull
bindkey '^[x' gitpull

#npm
export n=npm
alias n=$n
alias ni="$n install"
alias nid="$n install --save-dev"
alias nig="$n install -g"
alias nr="$n run"
alias nx=npx
alias nt="$n run test"
alias ns="$n run start"
alias niq="$n install --quiet"
alias nu="$n uninstall"


export y=yarn
alias y=$y
alias yt="$y test"
alias yi="$y install"
alias ya="$y add"
alias yad="$y add -D"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
