{ config, pkgs, ... }:

{
  imports = [
    ../common.nix
    ../../modules/cli.nix
  ];

  networking.hostName = "rpi-jd";

  system.stateVersion = "25.05";
}
