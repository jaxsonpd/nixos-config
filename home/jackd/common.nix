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
  
  home.file.".config/nvim".source = ../../external/nvim-config;

  home.packages = with pkgs; [
    nushell
    neovim
  ];

  home.stateVersion = "25.05";
}
