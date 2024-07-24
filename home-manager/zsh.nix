{ config, pkgs, ... }: {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;
  shellAliases =
    let
      flakeDir = "~/.nix";
    in {
    ls = "ls -p -G";
    la = "ls -A";
    ll = "eza -l -g --icons";
    lla = "ll -a";

    c = "clear";

    vim = "nvim";
  };

  history.size = 10000;
  history.path = "${config.xdg.dataHome}/zsh/history";

  initExtra = ''
    eval "$(oh-my-posh init zsh --config /home/rakhat/.config/dotfiles/oh-my-posh/zen.toml)"
    export NIX_LD=$(nix eval --impure --raw --expr 'let pkgs = import <nixpkgs> {}; NIX_LD = pkgs.lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker"; in NIX_LD')
  '';

  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "sudo" ];
  };
}
