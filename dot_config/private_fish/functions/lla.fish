function lla --wraps='exa -l -g -a --icons' --wraps='exa -l -g -a --icons --git' --description 'alias lla exa -l -g -a --icons --git'
  exa -l -g -a --icons --git $argv
        
end
