{ pkgs, lib, ... }:

{
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];

  services.xserver.desktopManager.xterm.enable = false;

  environment.gnome.excludePackages = with pkgs; [
    # baobab      # disk usage analyzer
    # cheese      # photo booth
    # eog         # image viewer
    epiphany    # web browser
    # gedit       # text editor gnome-text-editor simple-scan # document scanner
    # totem       # video player
    yelp        # help viewer
    evince      # document viewer
    # file-roller # archive manager
    # geary       # email client
    # seahorse    # password manager
    gnome-console
    gnome-tour
    # gnome-calculator
    # gnome-calendar
    # gnome-characters
    # gnome-clocks
    gnome.gnome-contacts
    # gnome-font-viewer
    # gnome-logs
    gnome.gnome-maps
    # gnome-music
    # gnome-photos
    # gnome-screenshot
    # gnome-system-monitor
    # gnome-weather
    # gnome-disk-utility
    gnome-connections
  ];

  documentation.nixos.enable = false;

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gnome
    gnomeExtensions.clipboard-history
    gnome.networkmanager-openvpn
    gnome.gnome-shell-extensions
    gnomeExtensions.quick-settings-tweaker
    gnomeExtensions.gesture-improvements
    gnomeExtensions.tiling-assistant
    gnomeExtensions.ideapad
    gnomeExtensions.ideapad-controls
    gnomeExtensions.spotify-controller
    gnomeExtensions.spotify-tray
    zenity
  ];
}
