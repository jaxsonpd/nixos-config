{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/desktop.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "laptop-jd";

  system.stateVersion = "25.05";
}
