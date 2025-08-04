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

  # home.file.".config/nvim" = let 
  #   nvim-config = ./../../external/nvim-config;
  #   in nvim-config;

  home.packages = with pkgs; [
    nushell
    tinymist
    obsidian
  ];

  

  home.stateVersion = "25.05";
}
