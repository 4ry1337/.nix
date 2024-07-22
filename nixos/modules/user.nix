{ pkgs, ... }: {
  programs.xwayland.enable = true;
  programs.zsh.enable = true;
  programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

  users = {
    defaultUserShell = pkgs.zsh;

    users.rakhat = {
      isNormalUser = true;
      description = "rakhat";
      extraGroups = [ "networkmanager" "wheel" "docker" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };
}
