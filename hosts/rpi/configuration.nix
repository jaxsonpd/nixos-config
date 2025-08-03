{ config, pkgs, ... }:

{
  imports = [
    ../../modules/cli.nix
  ];

  networking.hostName = "rpi-jd";

  users.users.jackd = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  system.stateVersion = "25.05";
}
