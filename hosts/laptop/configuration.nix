{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/desktop.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "laptop-jd";

  users.users.jackd = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.nushell;
  };

  system.stateVersion = "25.05";
}
