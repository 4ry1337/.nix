{ pkgs, lib, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
    allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) (
        map lib.getName [
          pkgs.discord
          pkgs.obsidian
        ]
      );
  };

  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    armcord
    spotify
    obsidian
    alacritty
    telegram-desktop
    whatsapp-for-linux
    obs-studio
    gimp
    zed-editor
    libreoffice
  ];
}
