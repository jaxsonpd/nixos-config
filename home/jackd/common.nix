{ config, pkgs, ... }:

{
  home.username = "jackd";
  home.homeDirectory = "/home/jackd";

  programs.git = {
    enable = true;
    userName = "Jack Duignan";
    userEmail = "jackpduignan@gmail.com";
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      tamasfe.even-better-toml
      ms-vscode.cpptools
      jnoortheen.nix-ide
      github.github-vscode-theme
    ];
    profiles.default.userSettings = {
      "rust-analyzer.cargo.targetDir" = "target";
      "editor.formatOnSave" = true;
      "editor.defaultFormatter" = "rust-lang.rust-analyzer";
      "files.trimTrailingWhitespace" = true;
      "workbench.colorTheme" = "Github Dark";
    };
  };

  programs.nushell.enable = true;

  # home.file.".config/nvim" = let
  #   nvim-config = ./../../external/nvim-config;
  #   in nvim-config;

  home.packages = with pkgs; [
    tinymist
    obsidian
    firefox
    kicad
  ];



  home.stateVersion = "25.05";
}
