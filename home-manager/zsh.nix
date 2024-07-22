{ config, ... }: {
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

    vim = "nvim";

    g = "git";
  };

  history.size = 10000;
  history.path = "${config.xdg.dataHome}/zsh/history";

  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "sudo" ];
    theme = "agnoster"; # blinks is also really nice
  };
}
