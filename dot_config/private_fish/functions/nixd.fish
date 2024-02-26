function nixd --wraps='nix --extra-experimental-features "nix-command flakes"' --description 'alias nixd=nix --extra-experimental-features "nix-command flakes"'
  nix --extra-experimental-features "nix-command flakes" $argv
        
end
