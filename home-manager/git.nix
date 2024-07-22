{ config, pkgs, ... }:
{
  enable = true;
  lfs.enable = true;
  userName = "Rakhat Yskak";
  userEmail = "yskak.rakhat@gmail.com";
  signing.key = null;
  signing.signByDefault = true;

  extraConfig = {
    pull = {
      rebase = true;
    };
    init = {
      defaultBranch = "main";
    };
  ghq.root = "/home/rakhat/Documents/Dev/";
  };
}
