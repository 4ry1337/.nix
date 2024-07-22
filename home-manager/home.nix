{ inputs, config, pkgs, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
in
{
  programs.home-manager.enable = true;

  home = {
    username = "rakhat";
    homeDirectory = "/home/rakhat";
    stateVersion = "24.05";
  };

  xdg.enable = true;
  xdg.configFile.nvim.source = mkOutOfStoreSymlink "/home/rakhat/.config/dotfiles/nvim";

  home.packages = with pkgs; [];

  programs = {
    tmux = (import ./tmux.nix { inherit pkgs; });
    zsh = (import ./zsh.nix { inherit config pkgs; });
    neovim = (import ./neovim.nix { inherit config pkgs; });
    fzf = (import ./fzf.nix { inherit pkgs; });
    alacritty = (import ./alacritty.nix { inherit config pkgs; });
    git = (import ./git.nix { inherit config pkgs; });
 };
}
