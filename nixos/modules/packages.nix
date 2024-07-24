{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    # utils
    fastfetch
    neofetch
    wget
    vim
    neovim
    tmux
    docker
    docker-compose

    # misc
    oh-my-posh
    glow
    which
    jq
    fd
    sleek-grub-theme

    # zsh
    zinit
    zsh-powerlevel10k

    # file
    zoxide
    eza
    stow
    ripgrep
    fzf
    tree
    tree-sitter
    ntfs3g

    # git
    git
    lazygit
    gh
    ghq

    xwayland
    xwaylandvideobridge
    xdg-utils

    # clipboard
    wl-clipboard
    xclip

    # archive
    zip
    unzip

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    lshw

    # nixos
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    victor-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "JetBrainsMono" "iA-Writer" "VictorMono" ]; })
  ];
}
