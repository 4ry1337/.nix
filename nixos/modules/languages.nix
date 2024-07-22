{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
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
  ];
}
