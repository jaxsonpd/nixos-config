{ config, pkgs, ... }:

{
  home.username = "jackd";
  home.homeDirectory = "/home/jackd";

  programs.git = {
    enable = true;
    userName = "Jack Duignan";
    userEmail = "jackpduignan@gmail.com";
  };
  
  programs.nushell.enable = true;

  home.file.".config/nvim" = {
    source = ../../external/nvim-config; # e.g., ../dotfiles/nvim
    recursive = true; # If your config is a directory
  };

  home.packages = with pkgs; [
    nushell
    tinymist
  ];

  

  home.stateVersion = "25.05";
}
