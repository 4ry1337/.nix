{
  services = {
   kanata = {
      enable = true;
      keyboards = {
        internalKeyboard = {
          extraDefCfg = "process-unmapped-keys yes";
          config = ''
          (defsrc
           caps
          )
          (deflayer base
           esc
          )
          '';
        };
      };
    };
    openssh.enable = true;
    printing.enable = true;
    libinput.enable = true;
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      desktopManager.xterm.enable = false;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };
}
