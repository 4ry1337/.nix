{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tmux
    docker
    docker-compose
    android-studio

    # languages
    clang
    lua
    luarocks
    go
    python3
    nodejs
    rustup
    yarn
    gnumake
    tailwindcss
    tailwindcss-language-server
    lua-language-server
    flutter
  ];
}
