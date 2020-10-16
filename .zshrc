# 色を使用出来るようにする
autoload -Uz colors
colors

#補完機能を有効にする
autoload -Uz compinit
compinit

#補完のリストの、選択している部分を塗りつぶす
zstyle ':completion:*' menu select

#入力ミスに対応する。
setopt correct

#直前のコマンドと同じなら、履歴に残さない
setopt hist_ignore_dups

# 高機能なワイルドカード展開を使用する
setopt extended_glob

#プロンプトの文字列を変更
PROMPT='%% '

# 各コマンドの後にzsh改行プロンプト
precmd(){print ''}

# コンピュータへのログイン時にrbenvの初期化処理をおこなう
eval "$(rbenv init -)"

# Ruby や Rails のために path を通す
export PATH="/usr/local/opt/ruby/bin:/Users/mirai/.rbenv/shims/rails:$PATH"

# コマンド中のコメントを有効にする
setopt interactivecomments

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/mirai/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# rails credentials:edit
export EDITOR="atom --wait"
