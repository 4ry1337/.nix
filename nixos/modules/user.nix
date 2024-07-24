{ pkgs, ... }: {
  programs.adb.enable = true;
  programs.nix-ld.enable = true;
  programs.xwayland.enable = true;
  programs.zsh.enable = true;
  programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  users = {
    defaultUserShell = pkgs.zsh;

    users.rakhat = {
      isNormalUser = true;
      description = "rakhat";
      extraGroups = [ "networkmanager" "wheel" "kvm" "abdusers" "docker" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };
}
