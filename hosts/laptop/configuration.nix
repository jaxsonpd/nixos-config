{ config, pkgs, inputs, ... }:

{
  imports = [
    ../common.nix
    ../../modules/desktop.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "laptop-jd";

  system.stateVersion = "25.05";
}
