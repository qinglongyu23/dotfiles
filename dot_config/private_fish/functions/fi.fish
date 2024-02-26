function fi --wraps='fd -IH | fzf' --description 'alias fi=fd -IH | fzf'
  fd -IH | fzf $argv
        
end
