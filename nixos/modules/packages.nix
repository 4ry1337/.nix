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
    #apps
    google-chrome
    discord
    armcord
    spotify
    obsidian
    alacritty
    telegram-desktop
    whatsapp-for-linux
    obs-studio

    # utils
    neofetch
    wget
    vim
    neovim
    tmux
    zoxide
    eza
    ripgrep
    fzf

    # git
    git
    lazygit
    gh
    ghq

    # misc
    tree-sitter
    glow
    which
    tree
    jq
    fd
    brightnessctl
    xwayland
    xwaylandvideobridge
    xdg-utils
    xdg-desktop-portal-gnome

    # clipboard
    wl-clipboard
    xclip
    gnomeExtensions.clipboard-history

    # archive
    zip
    unzip

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    lshw
    ntfs3g

    # nixos
    home-manager

    # gnome
    gnome.networkmanager-openvpn
    gnome.gnome-shell-extensions
    gnomeExtensions.tiling-assistant
    gnomeExtensions.window-calls
    gnomeExtensions.spotify-controller
    zenity
  ];

  environment.gnome.excludePackages = with pkgs; [
    # baobab      # disk usage analyzer
    # cheese      # photo booth
    # eog         # image viewer
    epiphany    # web browser
    gedit       # text editor
    simple-scan # document scanner
    # totem       # video player
    yelp        # help viewer
    evince      # document viewer
    xterm
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
    # gnome-maps
    # gnome-music
    # gnome-photos
    # gnome-screenshot
    # gnome-system-monitor
    # gnome-weather
    # gnome-disk-utility
    pkgs.gnome-connections
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}
