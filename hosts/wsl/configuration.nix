{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ../common.nix
    ../../modules/cli.nix
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];

  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.loader.grub.enable = lib.mkForce false;

  wsl.enable = true;
  wsl.defaultUser = "jackd";

  networking.hostName = "wsl-jd";

  system.stateVersion = "25.05";
}
