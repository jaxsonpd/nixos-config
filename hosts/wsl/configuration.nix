{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ../../modules/cli.nix
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];

  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.loader.grub.enable = lib.mkForce false;

  wsl.enable = true;
  wsl.defaultUser = "nixos";

  networking.hostName = "wsl-jd";

  users.users.jackd = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.nushell;
  };

  system.stateVersion = "25.05";
}
