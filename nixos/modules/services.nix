{
  virtualisation.docker.enable = true;
  services = {
    openssh.enable = true;
    libinput.enable = true;
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };
}
