function rgi --wraps=rg\ --ignore-case\ --files-with-matches\ \'\'\ \|\ fzf\ --preview\ \'rg\ --ignore-case\ --pretty\ --context\ 10\ \{q\}\ \{\}\' --description alias\ rgi=rg\ --ignore-case\ --files-with-matches\ \'\'\ \|\ fzf\ --preview\ \'rg\ --ignore-case\ --pretty\ --context\ 10\ \{q\}\ \{\}\'
  rg --ignore-case --files-with-matches '' | fzf --preview 'rg --ignore-case --pretty --context 10 {q} {}' $argv
        
end
